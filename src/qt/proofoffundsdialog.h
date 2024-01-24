// Copyright (c) 2023 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef PROOFOFFUNDSDIALOG_H
#define PROOFOFFUNDSDIALOG_H

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <stdexcept>
#include "stdlib.h"
#include <random>
#include <rpc/server.h>
#include <rpc/util.h>
#include <univalue.h>
#include <QDialog>


namespace Ui {
    class ProofOfFundsDialog;
    }

    class ProofOfFundsDialog : public QDialog
    {
        Q_OBJECT

    public:
        explicit ProofOfFundsDialog(QWidget *parent = nullptr);
        ~ProofOfFundsDialog();

    private:
        Ui::ProofOfFundsDialog *ui;

    private Q_SLOTS:
        void on_pushButtonGenerate_clicked();
        void on_pushButtonVerify_clicked();

};

struct TransactionPhaseOne {
    std::string blockchain;
    std::string txid;
    std::string address;
    std::string scriptPubKey;
    double amount;

    TransactionPhaseOne()
    : blockchain(), txid(), address(), scriptPubKey(), amount() {}
};

struct TransactionPhaseThree {
    std::string blockchain;
    std::string txid;
    std::string address;
    std::string scriptPubKey;
    std::string message;
    std::string signature;
    double amount;

    TransactionPhaseThree()
    : blockchain(), txid(), address(), scriptPubKey(),
    message(), signature(), amount() {}
};

struct VerifyTransaction {

    std::string blockchain;
    std::string txid;
    std::string address;
    std::string scriptPubKey;
    std::string message;
    std::string signature;
    double amount;
    bool isValid;

    VerifyTransaction() : blockchain(), txid(), address(), scriptPubKey(),
    message(), signature(), amount(), isValid() {}

};

void phaseOne(const std::string & filename);

void phaseTwo(std::string & filename, u_int32_t choice, std::string & message);

void phaseThree(std::string& filename);

void phaseFour(const std::string filename, bool skip);

std::string signMessage(const std::string& address, const std::string& message);

std::string randomHex();

std::vector<TransactionPhaseOne> readCSV(std::string &filename);

std::vector<TransactionPhaseThree> readThirdCSV(std::string &filename);

std::vector<VerifyTransaction> readFinalCSV(std::string filename);

bool verifySig(const VerifyTransaction & transaction);

UniValue SendRequest(const std::string& method, const UniValue& params)

#endif // PROOFOFFUNDSDIALOG_H
