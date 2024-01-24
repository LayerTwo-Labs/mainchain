// Copyright (c) 2023 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <qt/proofoffundsdialog.h>
#include <qt/forms/ui_proofoffundsdialog.h>

ProofOfFundsDialog::ProofOfFundsDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::ProofOfFundsDialog)
{
    ui->setupUi(this);
}

ProofOfFundsDialog::~ProofOfFundsDialog()
{
    delete ui;
}

void ProofOfFundsDialog::on_pushButtonGenerate_clicked()
{
    std::string filename = ui->lineEditFileOut->text().toStdString();
    std::string message = ui->lineEditMessage->text().toStdString();

    phaseOne(filename);
    
    phaseTwo(filename, (message.empty() ? 2 : 1), message);

    phaseThree(filename);
}

void ProofOfFundsDialog::on_pushButtonVerify_clicked()
{
    std::string filename = ui->lineEditFileIn->text().toStdString();
    bool skipFirstRow = ui->checkBoxSkip->isChecked();
    phaseFour(filename, skipFirstRow);
}

void phaseOne(const std::string & filename) {

    JSONRPCRequest request;
    request.strMethod = "listunspent";
    UniValue result;

    try {
        result = tableRPC.execute(request);
    } catch (const UniValue& objError) {
        throw std::runtime_error(find_value(objError, "message").get_str());
    } catch (const std::exception& e) {
        throw std::runtime_error(e.what());
    }

    const UniValue& unspents = result.get_array();
    std::ofstream outFile(filename, std::ios::out);
    outFile << "blockchain,txid,address,scriptPubKey,amount" << std::endl;

    for (unsigned int i = 0; i < unspents.size(); i++) {
        const UniValue& unspent = unspents[i];
        std::string address = find_value(unspent, "address").get_str();
        if (!address.empty() && address[0] == 'm') {
            // legacy address starts with m in regtest and 1 in normal
            std::string txid = find_value(unspent, "txid").get_str();
            std::string scriptPubKey = find_value(unspent, "scriptPubKey").get_str();
            double amount = find_value(unspent, "amount").get_real();
            outFile << "BTC," << txid << "," << address << "," << scriptPubKey << "," << amount << std::endl;
        }
    }
    outFile.close();
}

std::vector<TransactionPhaseOne> readCSV(std::string &filename) {

    std::vector<TransactionPhaseOne> rows;

    std::ifstream csvFile(filename);
    if (!csvFile) {
        std::cerr << "Failed to open CSV file." << std::endl;
        return rows;
    }

    std::string line;
    std::string headers;
    std::getline(csvFile, headers);

    while (std::getline(csvFile, line)) {

        std::stringstream ss(line);
        std::string field;
        TransactionPhaseOne row;

        std::getline(ss, field, ',');
        row.blockchain = field;

        std::getline(ss, field, ',');
        row.txid = field;

        std::getline(ss, field, ',');
        row.address = field;

        std::getline(ss, field, ',');
        row.scriptPubKey = field;

        std::getline(ss, field, ',');
        row.amount = stod(field);

        rows.push_back(row);
    }

    csvFile.close();

    return rows;
}

std::string randomHex() {

    std::random_device rd;
    std::mt19937 generator(rd());
    std::uniform_int_distribution<int> distribution(0, 15);

    std::string random;
    random.resize(16);

    const char arr[] = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
    for (size_t i = 0; i < random.size(); ++i) {
        random[i] = arr[distribution(generator)];
    }

    return random;
}

void phaseTwo(std::string & filename, u_int32_t choice, std::string & message) {
   
    bool random = false;

    if (choice == 2) {
        random = true;
    }

    std::vector<TransactionPhaseOne> input = readCSV(filename);
    std::ofstream outFile(filename, std::ios::out);
    outFile << "blockchain,txid,address,scriptPubKey,message,amount\n";
    std::string messageIn;
    if (random) {
        messageIn = randomHex();
    }
    else {
        messageIn = message;
    }
    for (size_t i = 0; i < input.size(); ++i) {
        outFile << "BTC," << input[i].txid << "," << input[i].address << ","
        << input[i].scriptPubKey << ",";
        outFile << messageIn << "," << input[i].amount << std::endl;
    }
    outFile.close();
}

std::vector<TransactionPhaseThree> readThirdCSV(std::string &filename) {
    std::vector<TransactionPhaseThree> rows;

    std::ifstream csvFile(filename);
    if (!csvFile) {
        std::cerr << "Failed to open CSV file." << std::endl;
        return rows;
    }

    std::string line;
    std::string headers;
    std::getline(csvFile, headers);

    while (std::getline(csvFile, line)) {
        std::stringstream ss(line);
        std::string field;
        TransactionPhaseThree row;

        std::getline(ss, field, ',');
        row.blockchain = field;

        std::getline(ss, field, ',');
        row.txid = field;

        std::getline(ss, field, ',');
        row.address = field;

        std::getline(ss, field, ',');
        row.scriptPubKey = field;

        std::getline(ss, field, ',');
        row.message = field;

        std::getline(ss, field, ',');
        row.amount = stod(field);

        rows.push_back(row);
    }

    csvFile.close();

    return rows;
}

std::string signMessage(const std::string& address, const std::string& message) {
    try {
        UniValue params(UniValue::VARR);
        params.push_back(UniValue(address));
        params.push_back(UniValue(message));

        UniValue result;
        JSONRPCRequest request;
        request.params = params;
        request.strMethod = "signmessage";
        result = tableRPC.execute(request);

        if (result.isNull())
            throw JSONRPCError(RPC_INTERNAL_ERROR, "Unable to sign message");

        return result.get_str();
    } 
    catch (const UniValue& objError) {
        throw std::runtime_error(find_value(objError, "message").get_str());
    } 
    catch (const std::exception& e) {
        throw std::runtime_error(e.what());
    }
}

void phaseThree(std::string& filename) {
    auto rows = readThirdCSV(filename);
    std::ofstream outputFile(filename, std::ios::out);
    outputFile << "blockchain,txid,address,scriptPubKey,message,signature,amount\n";

    for (const auto& row : rows) {
        std::string signature = signMessage(row.address, row.message);
        outputFile << row.blockchain << "," << row.txid << "," << row.address << "," << row.scriptPubKey
                   << "," << row.message << "," << signature << "," << row.amount << "\n";
    }

    outputFile.close();
}

std::vector<VerifyTransaction> readFinalCSV(std::string filename) {
    std::vector<VerifyTransaction> rows;

    std::ifstream csvFile(filename);
    if (!csvFile) {
        std::cerr << "Failed to open CSV file." << std::endl;
        return rows;
    }

    std::string line;
    std::string headers;
    std::getline(csvFile, headers);

    while (std::getline(csvFile, line)) {
        std::stringstream ss(line);
        std::string field;
        VerifyTransaction row;

        std::getline(ss, field, ',');
        row.blockchain = field;

        std::getline(ss, field, ',');
        row.txid = field;

        std::getline(ss, field, ',');
        row.address = field;

        std::getline(ss, field, ',');
        row.scriptPubKey = field;

        std::getline(ss, field, ',');
        row.message = field;

        std::getline(ss, field, ',');
        row.signature = field;

        std::getline(ss, field, ',');
        row.amount = stod(field);

        rows.push_back(row);
    }

    csvFile.close();

    return rows;
}

void phaseFour(const std::string filename, bool skip) {
    std::vector<VerifyTransaction> transactions = readFinalCSV(filename);
    size_t total = transactions.size();
    size_t failed = 0;
    double totalBTC = 0;
    for (auto & transaction : transactions) {
        transaction.isValid = verifySig(transaction);
        totalBTC += transaction.amount;
        if (!transaction.isValid) {
            failed++;
            totalBTC -= transaction.amount;
        }
    }
    std::ofstream outputFile(filename, std::ios::out);
    if (!skip) {
        outputFile << "summary: " << total - failed << " signatures of " << total << 
        " valid. total BTC: " << totalBTC << std::endl;
    }
    outputFile << "blockchain,txid,address,scriptPubKey,message,signature,amount,valid" << std::endl;
    for (auto & transaction : transactions) {
        outputFile << transaction.blockchain << "," << transaction.txid << "," <<
        transaction.address << "," << transaction.scriptPubKey << "," << transaction.message 
        << "," << transaction.signature << "," << transaction.amount << "," << 
        (transaction.isValid ? "true" : "false") << std::endl;
    }
    outputFile.close();
}


UniValue SendRequest(const std::string& method, const UniValue& params) {
    try {
        JSONRPCRequest request;
        request.params = params;
        request.strMethod = method;
        UniValue result = tableRPC.execute(request);
        return result;
    } 
    catch (const UniValue& objError) {
        throw std::runtime_error(find_value(objError, "message").get_str());
    } 
    catch (const std::exception& e) {
        throw std::runtime_error(e.what());
    }
}

bool verifySig(const VerifyTransaction & transaction) {
    UniValue paramsValidate(UniValue::VARR);
    paramsValidate.push_back(UniValue(transaction.address));

    UniValue responseValidate = SendRequest("validateaddress", paramsValidate);
    if(!responseValidate["isvalid"].get_bool()) {
        std::cerr << "Invalid Address" << std::endl;
        exit(1);
    }

    UniValue paramsVerify(UniValue::VARR);
    paramsVerify.push_back(UniValue(transaction.address));
    paramsVerify.push_back(UniValue(transaction.signature));
    paramsVerify.push_back(UniValue(transaction.message));

    UniValue responseVerify = SendRequest("verifymessage", paramsVerify);
    return responseVerify.get_bool();      
}
