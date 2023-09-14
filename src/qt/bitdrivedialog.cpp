// Copyright (c) 2023 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <qt/bitdrivedialog.h>
#include <qt/forms/ui_bitdrivedialog.h>

#include <qt/guiutil.h>
#include <qt/platformstyle.h>

#include <validation.h>
#include <wallet/wallet.h>

#include <QFile>
#include <QMessageBox>
#include <QTextStream>

BitDriveDialog::BitDriveDialog(const PlatformStyle *_platformStyle, QWidget *parent) :
    QDialog(parent),
    ui(new Ui::BitDriveDialog),
    platformStyle(_platformStyle)
{
    ui->setupUi(this);

    ui->pushButtonBackup->setIcon(platformStyle->SingleColorIcon(":/icons/safe"));
}

BitDriveDialog::~BitDriveDialog()
{
    delete ui;
}

void BitDriveDialog::on_pushButtonBrowse_clicked()
{
    QString filename = GUIUtil::getOpenFileName(this, tr("Select file to backup"), "", "", nullptr);
    if (filename.isEmpty())
        return;

    QFile file(filename);
    if (!file.open(QIODevice::ReadWrite | QIODevice::Text)) {
        QMessageBox::critical(this, tr("Import Failed"),
                              tr("File cannot be opened!\n"),
                              QMessageBox::Ok);
        return;
    }

    // Read
    QTextStream in(&file);
    QString str = in.readAll();
    file.close();

    strBackupData = str.toStdString();

    ui->textBrowser->setText("File to backup: " + filename);
}

void BitDriveDialog::on_pushButtonBackup_clicked()
{
    QMessageBox messageBox;
    messageBox.setDefaultButton(QMessageBox::Ok);

    if (strBackupData.empty()) {
        // No active wallet message box
        messageBox.setWindowTitle("Nothing to backup!");
        messageBox.setText("You must select a file to backup!.");
        messageBox.exec();
        return;
    }

    if (vpwallets.empty()) {
        // No active wallet message box
        messageBox.setWindowTitle("No active wallet found!");
        messageBox.setText("You must have an active wallet.");
        messageBox.exec();
        return;
    }

    if (vpwallets[0]->IsLocked()) {
        // Locked wallet message box
        messageBox.setWindowTitle("Wallet locked!");
        messageBox.setText("Wallet must be unlocked.");
        messageBox.exec();
        return;
    }

    CAmount feeAmount = ui->feeAmount->value();

    CScript script;
    script.resize(strBackupData.size() + 1);
    script[0] = OP_RETURN;
    memcpy(&script[1], strBackupData.data(), strBackupData.size());

    CTransactionRef tx;
    std::string strFail = "";
    {
        LOCK(vpwallets[0]->cs_wallet);
        if (!vpwallets[0]->CreateOPReturnTransaction(tx, strFail, feeAmount, script))
        {
            messageBox.setWindowTitle("Failed to create backup transaction!");
            messageBox.setText("Error: " + QString::fromStdString(strFail));
            messageBox.exec();
            return;
        }
    }

    messageBox.setWindowTitle("BitDrive backup transaction created!");
    QString strResult = "TxID:\n";
    strResult += QString::fromStdString(tx->GetHash().ToString());
    messageBox.setText(strResult);
    messageBox.exec();
}
