// Copyright (c) 2023 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef BITDRIVEDIALOG_H
#define BITDRIVEDIALOG_H

#include <QDialog>

class PlatformStyle;

namespace Ui {
class BitDriveDialog;
}

class BitDriveDialog : public QDialog
{
    Q_OBJECT

public:
    explicit BitDriveDialog(const PlatformStyle *_platformStyle, QWidget *parent = nullptr);
    ~BitDriveDialog();

private:
    Ui::BitDriveDialog *ui;

    const PlatformStyle *platformStyle = nullptr;

    std::string strBackupData = "";

private Q_SLOTS:
    void on_pushButtonBrowse_clicked();
    void on_pushButtonBackup_clicked();

};

#endif // BITDRIVEDIALOG_H
