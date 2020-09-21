// Copyright (c) 2016 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef SIDECHAINMINERDIALOG_H
#define SIDECHAINMINERDIALOG_H

#include <amount.h>

#include <QDialog>

class PlatformStyle;
class SidechainActivationTableModel;
class SidechainEscrowTableModel;
class WTPrimeVoteTableModel;
class WalletModel;

QT_BEGIN_NAMESPACE
class QTimer;
QT_END_NAMESPACE

namespace Ui {
class SidechainMinerDialog;
}

class SidechainMinerDialog : public QDialog
{
    Q_OBJECT

public:
    explicit SidechainMinerDialog(const PlatformStyle *platformStyle, QWidget *parent = 0);
    ~SidechainMinerDialog();

    void setWalletModel(WalletModel *model);

public Q_SLOTS:
    void setBalance(const CAmount& balance, const CAmount& unconfirmedBalance,
                    const CAmount& immatureBalance, const CAmount& watchOnlyBalance,
                    const CAmount& watchUnconfBalance, const CAmount& watchImmatureBalance);

    void on_pushButtonEscrowStatus_clicked();

    void on_pushButtonVoteSidechain_clicked();

    void on_pushButtonProposeSidechain_clicked();

    void on_pushButtonVoteWTPrime_clicked();

    void on_pushButtonCreateSidechainProposal_clicked();

    void on_pushButtonActivate_clicked();

    void on_pushButtonReject_clicked();

    void on_pushButtonUpvoteWTPrime_clicked();

    void on_pushButtonDownvoteWTPrime_clicked();

    void on_pushButtonAbstainWTPrime_clicked();

    void on_pushButtonClose_clicked();

    void on_toolButtonACKSidechains_clicked();

    void on_toolButtonACKWTPrime_clicked();

    void on_toolButtonKeyHash_clicked();

    void on_toolButtonIDHash1_clicked();

    void on_toolButtonIDHash2_clicked();

    void on_toolButtonSoftwareHashes_clicked();

    void on_toolButtonVoteWTPrime_clicked();

    void on_pushButtonRandomKeyHash_clicked();

    void on_comboBoxDefaultWTPrimeVote_currentIndexChanged(const int i);

    void Update();

private:
    Ui::SidechainMinerDialog *ui;

    WalletModel *walletModel;

    SidechainActivationTableModel *activationModel = nullptr;
    SidechainEscrowTableModel *escrowModel = nullptr;
    WTPrimeVoteTableModel *wtPrimeVoteModel = nullptr;

    QTimer *pollTimer;

    const PlatformStyle *platformStyle;

    void SetupTables();
};

#endif // SIDECHAINMINERDIALOG_H
