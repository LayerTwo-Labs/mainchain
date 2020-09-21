######################################################################
# Automatically generated by qmake (3.1) Sun Sep 20 17:20:01 2020
######################################################################

TEMPLATE = app
TARGET = mainchain
INCLUDEPATH += .

# The following define makes your compiler warn you if you use any
# feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Input
HEADERS += src/addrdb.h \
           src/addrman.h \
           src/amount.h \
           src/apiclient.h \
           src/arith_uint256.h \
           src/base58.h \
           src/bech32.h \
           src/blockencodings.h \
           src/bloom.h \
           src/chain.h \
           src/chainparams.h \
           src/chainparamsbase.h \
           src/chainparamsseeds.h \
           src/checkpoints.h \
           src/checkqueue.h \
           src/clientversion.h \
           src/coins.h \
           src/compat.h \
           src/compressor.h \
           src/core_io.h \
           src/core_memusage.h \
           src/cuckoocache.h \
           src/dbwrapper.h \
           src/fs.h \
           src/hash.h \
           src/httprpc.h \
           src/httpserver.h \
           src/indirectmap.h \
           src/init.h \
           src/key.h \
           src/keystore.h \
           src/limitedmap.h \
           src/memusage.h \
           src/merkleblock.h \
           src/miner.h \
           src/net.h \
           src/net_processing.h \
           src/netaddress.h \
           src/netbase.h \
           src/netmessagemaker.h \
           src/noui.h \
           src/pow.h \
           src/prevector.h \
           src/protocol.h \
           src/pubkey.h \
           src/random.h \
           src/reverse_iterator.h \
           src/reverselock.h \
           src/scheduler.h \
           src/serialize.h \
           src/sidechain.h \
           src/sidechaindb.h \
           src/streams.h \
           src/sync.h \
           src/threadinterrupt.h \
           src/threadsafety.h \
           src/timedata.h \
           src/tinyformat.h \
           src/torcontrol.h \
           src/txdb.h \
           src/txmempool.h \
           src/ui_interface.h \
           src/uint256.h \
           src/undo.h \
           src/util.h \
           src/utilmoneystr.h \
           src/utilstrencodings.h \
           src/utiltime.h \
           src/validation.h \
           src/validationinterface.h \
           src/version.h \
           src/versionbits.h \
           src/warnings.h \
           src/bench/bench.h \
           src/bench/perf.h \
           src/compat/byteswap.h \
           src/compat/endian.h \
           src/compat/sanity.h \
           src/consensus/consensus.h \
           src/consensus/merkle.h \
           src/consensus/params.h \
           src/consensus/tx_verify.h \
           src/consensus/validation.h \
           src/crypto/aes.h \
           src/crypto/chacha20.h \
           src/crypto/common.h \
           src/crypto/hmac_sha256.h \
           src/crypto/hmac_sha512.h \
           src/crypto/ripemd160.h \
           src/crypto/sha1.h \
           src/crypto/sha256.h \
           src/crypto/sha512.h \
           src/policy/feerate.h \
           src/policy/fees.h \
           src/policy/policy.h \
           src/policy/rbf.h \
           src/primitives/block.h \
           src/primitives/transaction.h \
           src/qt/addressbookpage.h \
           src/qt/addresstablemodel.h \
           src/qt/askpassphrasedialog.h \
           src/qt/bantablemodel.h \
           src/qt/callback.h \
           src/qt/clientmodel.h \
           src/qt/coincontroldialog.h \
           src/qt/coincontroltreewidget.h \
           src/qt/coinsplitconfirmationdialog.h \
           src/qt/csvmodelwriter.h \
           src/qt/drivenetaddressvalidator.h \
           src/qt/drivenetamountfield.h \
           src/qt/drivenetgui.h \
           src/qt/drivenetunits.h \
           src/qt/editaddressdialog.h \
           src/qt/guiconstants.h \
           src/qt/guiutil.h \
           src/qt/intro.h \
           src/qt/macdockiconhandler.h \
           src/qt/macnotificationhandler.h \
           src/qt/miningdialog.h \
           src/qt/networkstyle.h \
           src/qt/notificator.h \
           src/qt/openuridialog.h \
           src/qt/optionsdialog.h \
           src/qt/optionsmodel.h \
           src/qt/overviewpage.h \
           src/qt/paymentrequestdialog.h \
           src/qt/paymentrequestplus.h \
           src/qt/paymentserver.h \
           src/qt/peertablemodel.h \
           src/qt/platformstyle.h \
           src/qt/qvalidatedlineedit.h \
           src/qt/qvaluecombobox.h \
           src/qt/receivecoinsdialog.h \
           src/qt/receiverequestdialog.h \
           src/qt/recentrequeststablemodel.h \
           src/qt/rpcconsole.h \
           src/qt/sendcoinsdialog.h \
           src/qt/sendcoinsentry.h \
           src/qt/sidechainactivationtablemodel.h \
           src/qt/sidechaindepositconfirmationdialog.h \
           src/qt/sidechainescrowtablemodel.h \
           src/qt/sidechainminerdialog.h \
           src/qt/sidechainpage.h \
           src/qt/sidechaintabledialog.h \
           src/qt/sidechainwithdrawaltablemodel.h \
           src/qt/sidechainwtprimedetails.h \
           src/qt/signverifymessagedialog.h \
           src/qt/splashscreen.h \
           src/qt/trafficgraphwidget.h \
           src/qt/transactiondesc.h \
           src/qt/transactiondescdialog.h \
           src/qt/transactionfilterproxy.h \
           src/qt/transactionrecord.h \
           src/qt/transactionreplaydialog.h \
           src/qt/transactiontablemodel.h \
           src/qt/transactionview.h \
           src/qt/utilitydialog.h \
           src/qt/walletframe.h \
           src/qt/walletmodel.h \
           src/qt/walletmodeltransaction.h \
           src/qt/walletview.h \
           src/qt/winshutdownmonitor.h \
           src/qt/wtprimevotetablemodel.h \
           src/rpc/blockchain.h \
           src/rpc/client.h \
           src/rpc/mining.h \
           src/rpc/protocol.h \
           src/rpc/register.h \
           src/rpc/safemode.h \
           src/rpc/server.h \
           src/rpc/util.h \
           src/script/drivenetconsensus.h \
           src/script/interpreter.h \
           src/script/ismine.h \
           src/script/script.h \
           src/script/script_error.h \
           src/script/sigcache.h \
           src/script/sign.h \
           src/script/standard.h \
           src/support/cleanse.h \
           src/support/events.h \
           src/support/lockedpool.h \
           src/test/scriptnum10.h \
           src/test/test_drivenet.h \
           src/wallet/coincontrol.h \
           src/wallet/crypter.h \
           src/wallet/db.h \
           src/wallet/feebumper.h \
           src/wallet/fees.h \
           src/wallet/init.h \
           src/wallet/rpcwallet.h \
           src/wallet/wallet.h \
           src/wallet/walletdb.h \
           src/wallet/walletutil.h \
           src/zmq/zmqabstractnotifier.h \
           src/zmq/zmqconfig.h \
           src/zmq/zmqnotificationinterface.h \
           src/zmq/zmqpublishnotifier.h \
           src/crypto/ctaes/ctaes.h \
           src/leveldb/db/builder.h \
           src/leveldb/db/db_impl.h \
           src/leveldb/db/db_iter.h \
           src/leveldb/db/dbformat.h \
           src/leveldb/db/filename.h \
           src/leveldb/db/log_format.h \
           src/leveldb/db/log_reader.h \
           src/leveldb/db/log_writer.h \
           src/leveldb/db/memtable.h \
           src/leveldb/db/skiplist.h \
           src/leveldb/db/snapshot.h \
           src/leveldb/db/table_cache.h \
           src/leveldb/db/version_edit.h \
           src/leveldb/db/version_set.h \
           src/leveldb/db/write_batch_internal.h \
           src/leveldb/port/atomic_pointer.h \
           src/leveldb/port/port.h \
           src/leveldb/port/port_example.h \
           src/leveldb/port/port_posix.h \
           src/leveldb/port/port_win.h \
           src/leveldb/port/thread_annotations.h \
           src/leveldb/table/block.h \
           src/leveldb/table/block_builder.h \
           src/leveldb/table/filter_block.h \
           src/leveldb/table/format.h \
           src/leveldb/table/iterator_wrapper.h \
           src/leveldb/table/merger.h \
           src/leveldb/table/two_level_iterator.h \
           src/leveldb/util/arena.h \
           src/leveldb/util/coding.h \
           src/leveldb/util/crc32c.h \
           src/leveldb/util/env_posix_test_helper.h \
           src/leveldb/util/hash.h \
           src/leveldb/util/histogram.h \
           src/leveldb/util/logging.h \
           src/leveldb/util/mutexlock.h \
           src/leveldb/util/posix_logger.h \
           src/leveldb/util/random.h \
           src/leveldb/util/testharness.h \
           src/leveldb/util/testutil.h \
           src/qt/test/compattests.h \
           src/qt/test/rpcnestedtests.h \
           src/qt/test/uritests.h \
           src/qt/test/wallettests.h \
           src/secp256k1/contrib/lax_der_parsing.h \
           src/secp256k1/contrib/lax_der_privatekey_parsing.h \
           src/secp256k1/include/secp256k1.h \
           src/secp256k1/include/secp256k1_ecdh.h \
           src/secp256k1/include/secp256k1_recovery.h \
           src/secp256k1/src/basic-config.h \
           src/secp256k1/src/bench.h \
           src/secp256k1/src/ecdsa.h \
           src/secp256k1/src/ecdsa_impl.h \
           src/secp256k1/src/eckey.h \
           src/secp256k1/src/eckey_impl.h \
           src/secp256k1/src/ecmult.h \
           src/secp256k1/src/ecmult_const.h \
           src/secp256k1/src/ecmult_const_impl.h \
           src/secp256k1/src/ecmult_gen.h \
           src/secp256k1/src/ecmult_gen_impl.h \
           src/secp256k1/src/ecmult_impl.h \
           src/secp256k1/src/field.h \
           src/secp256k1/src/field_10x26.h \
           src/secp256k1/src/field_10x26_impl.h \
           src/secp256k1/src/field_5x52.h \
           src/secp256k1/src/field_5x52_asm_impl.h \
           src/secp256k1/src/field_5x52_impl.h \
           src/secp256k1/src/field_5x52_int128_impl.h \
           src/secp256k1/src/field_impl.h \
           src/secp256k1/src/group.h \
           src/secp256k1/src/group_impl.h \
           src/secp256k1/src/hash.h \
           src/secp256k1/src/hash_impl.h \
           src/secp256k1/src/num.h \
           src/secp256k1/src/num_gmp.h \
           src/secp256k1/src/num_gmp_impl.h \
           src/secp256k1/src/num_impl.h \
           src/secp256k1/src/scalar.h \
           src/secp256k1/src/scalar_4x64.h \
           src/secp256k1/src/scalar_4x64_impl.h \
           src/secp256k1/src/scalar_8x32.h \
           src/secp256k1/src/scalar_8x32_impl.h \
           src/secp256k1/src/scalar_impl.h \
           src/secp256k1/src/scalar_low.h \
           src/secp256k1/src/scalar_low_impl.h \
           src/secp256k1/src/testrand.h \
           src/secp256k1/src/testrand_impl.h \
           src/secp256k1/src/util.h \
           src/support/allocators/secure.h \
           src/support/allocators/zeroafterfree.h \
           src/univalue/include/univalue.h \
           src/univalue/lib/univalue_escapes.h \
           src/univalue/lib/univalue_utffilter.h \
           src/wallet/test/wallet_test_fixture.h \
           src/leveldb/helpers/memenv/memenv.h \
           src/leveldb/include/leveldb/c.h \
           src/leveldb/include/leveldb/cache.h \
           src/leveldb/include/leveldb/comparator.h \
           src/leveldb/include/leveldb/db.h \
           src/leveldb/include/leveldb/dumpfile.h \
           src/leveldb/include/leveldb/env.h \
           src/leveldb/include/leveldb/filter_policy.h \
           src/leveldb/include/leveldb/iterator.h \
           src/leveldb/include/leveldb/options.h \
           src/leveldb/include/leveldb/slice.h \
           src/leveldb/include/leveldb/status.h \
           src/leveldb/include/leveldb/table.h \
           src/leveldb/include/leveldb/table_builder.h \
           src/leveldb/include/leveldb/write_batch.h \
           src/leveldb/port/win/stdint.h \
           src/secp256k1/src/java/org_bitcoin_NativeSecp256k1.h \
           src/secp256k1/src/java/org_bitcoin_Secp256k1Context.h \
           src/secp256k1/src/modules/ecdh/main_impl.h \
           src/secp256k1/src/modules/ecdh/tests_impl.h \
           src/secp256k1/src/modules/recovery/main_impl.h \
           src/secp256k1/src/modules/recovery/tests_impl.h
FORMS += src/qt/forms/addressbookpage.ui \
         src/qt/forms/askpassphrasedialog.ui \
         src/qt/forms/coincontroldialog.ui \
         src/qt/forms/coinsplitconfirmationdialog.ui \
         src/qt/forms/debugwindow.ui \
         src/qt/forms/editaddressdialog.ui \
         src/qt/forms/helpmessagedialog.ui \
         src/qt/forms/intro.ui \
         src/qt/forms/miningdialog.ui \
         src/qt/forms/openuridialog.ui \
         src/qt/forms/optionsdialog.ui \
         src/qt/forms/overviewpage.ui \
         src/qt/forms/paymentrequestdialog.ui \
         src/qt/forms/receivecoinsdialog.ui \
         src/qt/forms/receiverequestdialog.ui \
         src/qt/forms/sendcoinsdialog.ui \
         src/qt/forms/sendcoinsentry.ui \
         src/qt/forms/sidechaindepositconfirmationdialog.ui \
         src/qt/forms/sidechainminerdialog.ui \
         src/qt/forms/sidechainpage.ui \
         src/qt/forms/sidechaintabledialog.ui \
         src/qt/forms/sidechainwtprimedetails.ui \
         src/qt/forms/signverifymessagedialog.ui \
         src/qt/forms/transactiondescdialog.ui \
         src/qt/forms/transactionreplaydialog.ui
SOURCES += src/addrdb.cpp \
           src/addrman.cpp \
           src/apiclient.cpp \
           src/arith_uint256.cpp \
           src/base58.cpp \
           src/bech32.cpp \
           src/blockencodings.cpp \
           src/bloom.cpp \
           src/chain.cpp \
           src/chainparams.cpp \
           src/chainparamsbase.cpp \
           src/checkpoints.cpp \
           src/clientversion.cpp \
           src/coins.cpp \
           src/compressor.cpp \
           src/core_read.cpp \
           src/core_write.cpp \
           src/dbwrapper.cpp \
           src/drivenet-cli.cpp \
           src/drivenet-tx.cpp \
           src/drivenetd.cpp \
           src/fs.cpp \
           src/hash.cpp \
           src/httprpc.cpp \
           src/httpserver.cpp \
           src/init.cpp \
           src/key.cpp \
           src/keystore.cpp \
           src/merkleblock.cpp \
           src/miner.cpp \
           src/net.cpp \
           src/net_processing.cpp \
           src/netaddress.cpp \
           src/netbase.cpp \
           src/noui.cpp \
           src/pow.cpp \
           src/protocol.cpp \
           src/pubkey.cpp \
           src/random.cpp \
           src/rest.cpp \
           src/scheduler.cpp \
           src/sidechain.cpp \
           src/sidechaindb.cpp \
           src/sync.cpp \
           src/threadinterrupt.cpp \
           src/timedata.cpp \
           src/torcontrol.cpp \
           src/txdb.cpp \
           src/txmempool.cpp \
           src/ui_interface.cpp \
           src/uint256.cpp \
           src/util.cpp \
           src/utilmoneystr.cpp \
           src/utilstrencodings.cpp \
           src/utiltime.cpp \
           src/validation.cpp \
           src/validationinterface.cpp \
           src/versionbits.cpp \
           src/warnings.cpp \
           src/bench/base58.cpp \
           src/bench/bench.cpp \
           src/bench/bench_bitcoin.cpp \
           src/bench/ccoins_caching.cpp \
           src/bench/checkblock.cpp \
           src/bench/checkqueue.cpp \
           src/bench/coin_selection.cpp \
           src/bench/crypto_hash.cpp \
           src/bench/Examples.cpp \
           src/bench/lockedpool.cpp \
           src/bench/mempool_eviction.cpp \
           src/bench/perf.cpp \
           src/bench/prevector_destructor.cpp \
           src/bench/rollingbloom.cpp \
           src/bench/verify_script.cpp \
           src/compat/glibc_compat.cpp \
           src/compat/glibc_sanity.cpp \
           src/compat/glibcxx_sanity.cpp \
           src/compat/strnlen.cpp \
           src/consensus/merkle.cpp \
           src/consensus/tx_verify.cpp \
           src/crypto/aes.cpp \
           src/crypto/chacha20.cpp \
           src/crypto/hmac_sha256.cpp \
           src/crypto/hmac_sha512.cpp \
           src/crypto/ripemd160.cpp \
           src/crypto/sha1.cpp \
           src/crypto/sha256.cpp \
           src/crypto/sha256_sse4.cpp \
           src/crypto/sha512.cpp \
           src/policy/feerate.cpp \
           src/policy/fees.cpp \
           src/policy/policy.cpp \
           src/policy/rbf.cpp \
           src/primitives/block.cpp \
           src/primitives/transaction.cpp \
           src/qt/addressbookpage.cpp \
           src/qt/addresstablemodel.cpp \
           src/qt/askpassphrasedialog.cpp \
           src/qt/bantablemodel.cpp \
           src/qt/clientmodel.cpp \
           src/qt/coincontroldialog.cpp \
           src/qt/coincontroltreewidget.cpp \
           src/qt/coinsplitconfirmationdialog.cpp \
           src/qt/csvmodelwriter.cpp \
           src/qt/drivenet.cpp \
           src/qt/drivenetaddressvalidator.cpp \
           src/qt/drivenetamountfield.cpp \
           src/qt/drivenetgui.cpp \
           src/qt/drivenetstrings.cpp \
           src/qt/drivenetunits.cpp \
           src/qt/editaddressdialog.cpp \
           src/qt/guiutil.cpp \
           src/qt/intro.cpp \
           src/qt/miningdialog.cpp \
           src/qt/networkstyle.cpp \
           src/qt/notificator.cpp \
           src/qt/openuridialog.cpp \
           src/qt/optionsdialog.cpp \
           src/qt/optionsmodel.cpp \
           src/qt/overviewpage.cpp \
           src/qt/paymentrequestdialog.cpp \
           src/qt/paymentrequestplus.cpp \
           src/qt/paymentserver.cpp \
           src/qt/peertablemodel.cpp \
           src/qt/platformstyle.cpp \
           src/qt/qvalidatedlineedit.cpp \
           src/qt/qvaluecombobox.cpp \
           src/qt/receivecoinsdialog.cpp \
           src/qt/receiverequestdialog.cpp \
           src/qt/recentrequeststablemodel.cpp \
           src/qt/rpcconsole.cpp \
           src/qt/sendcoinsdialog.cpp \
           src/qt/sendcoinsentry.cpp \
           src/qt/sidechainactivationtablemodel.cpp \
           src/qt/sidechaindepositconfirmationdialog.cpp \
           src/qt/sidechainescrowtablemodel.cpp \
           src/qt/sidechainminerdialog.cpp \
           src/qt/sidechainpage.cpp \
           src/qt/sidechaintabledialog.cpp \
           src/qt/sidechainwithdrawaltablemodel.cpp \
           src/qt/sidechainwtprimedetails.cpp \
           src/qt/signverifymessagedialog.cpp \
           src/qt/splashscreen.cpp \
           src/qt/trafficgraphwidget.cpp \
           src/qt/transactiondesc.cpp \
           src/qt/transactiondescdialog.cpp \
           src/qt/transactionfilterproxy.cpp \
           src/qt/transactionrecord.cpp \
           src/qt/transactionreplaydialog.cpp \
           src/qt/transactiontablemodel.cpp \
           src/qt/transactionview.cpp \
           src/qt/utilitydialog.cpp \
           src/qt/walletframe.cpp \
           src/qt/walletmodel.cpp \
           src/qt/walletmodeltransaction.cpp \
           src/qt/walletview.cpp \
           src/qt/winshutdownmonitor.cpp \
           src/qt/wtprimevotetablemodel.cpp \
           src/rpc/blockchain.cpp \
           src/rpc/client.cpp \
           src/rpc/mining.cpp \
           src/rpc/misc.cpp \
           src/rpc/net.cpp \
           src/rpc/protocol.cpp \
           src/rpc/rawtransaction.cpp \
           src/rpc/safemode.cpp \
           src/rpc/server.cpp \
           src/rpc/util.cpp \
           src/script/drivenetconsensus.cpp \
           src/script/interpreter.cpp \
           src/script/ismine.cpp \
           src/script/script.cpp \
           src/script/script_error.cpp \
           src/script/sigcache.cpp \
           src/script/sign.cpp \
           src/script/standard.cpp \
           src/support/cleanse.cpp \
           src/support/lockedpool.cpp \
           src/test/addrman_tests.cpp \
           src/test/allocator_tests.cpp \
           src/test/amount_tests.cpp \
           src/test/arith_uint256_tests.cpp \
           src/test/base32_tests.cpp \
           src/test/base58_tests.cpp \
           src/test/base64_tests.cpp \
           src/test/bech32_tests.cpp \
           src/test/bip32_tests.cpp \
           src/test/blockchain_tests.cpp \
           src/test/blockencodings_tests.cpp \
           src/test/bloom_tests.cpp \
           src/test/bmm_tests.cpp \
           src/test/bswap_tests.cpp \
           src/test/checkqueue_tests.cpp \
           src/test/coins_tests.cpp \
           src/test/compress_tests.cpp \
           src/test/crypto_tests.cpp \
           src/test/cuckoocache_tests.cpp \
           src/test/dbwrapper_tests.cpp \
           src/test/DoS_tests.cpp \
           src/test/getarg_tests.cpp \
           src/test/hash_tests.cpp \
           src/test/key_tests.cpp \
           src/test/limitedmap_tests.cpp \
           src/test/main_tests.cpp \
           src/test/mempool_tests.cpp \
           src/test/merkle_tests.cpp \
           src/test/merkleblock_tests.cpp \
           src/test/miner_tests.cpp \
           src/test/multisig_tests.cpp \
           src/test/net_tests.cpp \
           src/test/netbase_tests.cpp \
           src/test/pmt_tests.cpp \
           src/test/policyestimator_tests.cpp \
           src/test/pow_tests.cpp \
           src/test/prevector_tests.cpp \
           src/test/raii_event_tests.cpp \
           src/test/random_tests.cpp \
           src/test/reverselock_tests.cpp \
           src/test/rpc_tests.cpp \
           src/test/sanity_tests.cpp \
           src/test/scheduler_tests.cpp \
           src/test/script_P2SH_tests.cpp \
           src/test/script_standard_tests.cpp \
           src/test/script_tests.cpp \
           src/test/scriptnum_tests.cpp \
           src/test/serialize_tests.cpp \
           src/test/sidechainactivation_tests.cpp \
           src/test/sidechaindb_tests.cpp \
           src/test/sidechaindeposit_tests.cpp \
           src/test/sighash_tests.cpp \
           src/test/sigopcount_tests.cpp \
           src/test/skiplist_tests.cpp \
           src/test/streams_tests.cpp \
           src/test/test_drivenet.cpp \
           src/test/test_drivenet_fuzzy.cpp \
           src/test/test_drivenet_main.cpp \
           src/test/timedata_tests.cpp \
           src/test/torcontrol_tests.cpp \
           src/test/transaction_criticaldata_tests.cpp \
           src/test/transaction_tests.cpp \
           src/test/txvalidation_tests.cpp \
           src/test/txvalidationcache_tests.cpp \
           src/test/uint256_tests.cpp \
           src/test/util_tests.cpp \
           src/test/versionbits_tests.cpp \
           src/wallet/crypter.cpp \
           src/wallet/db.cpp \
           src/wallet/feebumper.cpp \
           src/wallet/fees.cpp \
           src/wallet/init.cpp \
           src/wallet/rpcdump.cpp \
           src/wallet/rpcwallet.cpp \
           src/wallet/wallet.cpp \
           src/wallet/walletdb.cpp \
           src/wallet/walletutil.cpp \
           src/zmq/zmqabstractnotifier.cpp \
           src/zmq/zmqnotificationinterface.cpp \
           src/zmq/zmqpublishnotifier.cpp \
           src/crypto/ctaes/bench.c \
           src/crypto/ctaes/ctaes.c \
           src/crypto/ctaes/test.c \
           src/leveldb/db/autocompact_test.cc \
           src/leveldb/db/builder.cc \
           src/leveldb/db/c.cc \
           src/leveldb/db/c_test.c \
           src/leveldb/db/corruption_test.cc \
           src/leveldb/db/db_bench.cc \
           src/leveldb/db/db_impl.cc \
           src/leveldb/db/db_iter.cc \
           src/leveldb/db/db_test.cc \
           src/leveldb/db/dbformat.cc \
           src/leveldb/db/dbformat_test.cc \
           src/leveldb/db/dumpfile.cc \
           src/leveldb/db/fault_injection_test.cc \
           src/leveldb/db/filename.cc \
           src/leveldb/db/filename_test.cc \
           src/leveldb/db/leveldbutil.cc \
           src/leveldb/db/log_reader.cc \
           src/leveldb/db/log_test.cc \
           src/leveldb/db/log_writer.cc \
           src/leveldb/db/memtable.cc \
           src/leveldb/db/recovery_test.cc \
           src/leveldb/db/repair.cc \
           src/leveldb/db/skiplist_test.cc \
           src/leveldb/db/table_cache.cc \
           src/leveldb/db/version_edit.cc \
           src/leveldb/db/version_edit_test.cc \
           src/leveldb/db/version_set.cc \
           src/leveldb/db/version_set_test.cc \
           src/leveldb/db/write_batch.cc \
           src/leveldb/db/write_batch_test.cc \
           src/leveldb/issues/issue178_test.cc \
           src/leveldb/issues/issue200_test.cc \
           src/leveldb/port/port_posix.cc \
           src/leveldb/port/port_posix_sse.cc \
           src/leveldb/port/port_win.cc \
           src/leveldb/table/block.cc \
           src/leveldb/table/block_builder.cc \
           src/leveldb/table/filter_block.cc \
           src/leveldb/table/filter_block_test.cc \
           src/leveldb/table/format.cc \
           src/leveldb/table/iterator.cc \
           src/leveldb/table/merger.cc \
           src/leveldb/table/table.cc \
           src/leveldb/table/table_builder.cc \
           src/leveldb/table/table_test.cc \
           src/leveldb/table/two_level_iterator.cc \
           src/leveldb/util/arena.cc \
           src/leveldb/util/arena_test.cc \
           src/leveldb/util/bloom.cc \
           src/leveldb/util/bloom_test.cc \
           src/leveldb/util/cache.cc \
           src/leveldb/util/cache_test.cc \
           src/leveldb/util/coding.cc \
           src/leveldb/util/coding_test.cc \
           src/leveldb/util/comparator.cc \
           src/leveldb/util/crc32c.cc \
           src/leveldb/util/crc32c_test.cc \
           src/leveldb/util/env.cc \
           src/leveldb/util/env_posix.cc \
           src/leveldb/util/env_posix_test.cc \
           src/leveldb/util/env_test.cc \
           src/leveldb/util/env_win.cc \
           src/leveldb/util/filter_policy.cc \
           src/leveldb/util/hash.cc \
           src/leveldb/util/hash_test.cc \
           src/leveldb/util/histogram.cc \
           src/leveldb/util/logging.cc \
           src/leveldb/util/options.cc \
           src/leveldb/util/status.cc \
           src/leveldb/util/testharness.cc \
           src/leveldb/util/testutil.cc \
           src/qt/test/compattests.cpp \
           src/qt/test/rpcnestedtests.cpp \
           src/qt/test/test_main.cpp \
           src/qt/test/uritests.cpp \
           src/qt/test/wallettests.cpp \
           src/secp256k1/contrib/lax_der_parsing.c \
           src/secp256k1/contrib/lax_der_privatekey_parsing.c \
           src/secp256k1/src/bench_ecdh.c \
           src/secp256k1/src/bench_internal.c \
           src/secp256k1/src/bench_recover.c \
           src/secp256k1/src/bench_sign.c \
           src/secp256k1/src/bench_verify.c \
           src/secp256k1/src/gen_context.c \
           src/secp256k1/src/secp256k1.c \
           src/secp256k1/src/tests.c \
           src/secp256k1/src/tests_exhaustive.c \
           src/univalue/gen/gen.cpp \
           src/univalue/lib/univalue.cpp \
           src/univalue/lib/univalue_get.cpp \
           src/univalue/lib/univalue_read.cpp \
           src/univalue/lib/univalue_write.cpp \
           src/univalue/test/no_nul.cpp \
           src/univalue/test/object.cpp \
           src/univalue/test/test_json.cpp \
           src/univalue/test/unitester.cpp \
           src/wallet/test/accounting_tests.cpp \
           src/wallet/test/crypto_tests.cpp \
           src/wallet/test/wallet_test_fixture.cpp \
           src/wallet/test/wallet_tests.cpp \
           src/leveldb/doc/bench/db_bench_sqlite3.cc \
           src/leveldb/doc/bench/db_bench_tree_db.cc \
           src/leveldb/helpers/memenv/memenv.cc \
           src/leveldb/helpers/memenv/memenv_test.cc \
           src/secp256k1/src/java/org_bitcoin_NativeSecp256k1.c \
           src/secp256k1/src/java/org_bitcoin_Secp256k1Context.c
RESOURCES += src/qt/drivenet.qrc src/qt/drivenet_locale.qrc
TRANSLATIONS += src/qt/locale/bitcoin_af.ts \
                src/qt/locale/bitcoin_af_ZA.ts \
                src/qt/locale/bitcoin_ar.ts \
                src/qt/locale/bitcoin_be_BY.ts \
                src/qt/locale/bitcoin_bg.ts \
                src/qt/locale/bitcoin_bg_BG.ts \
                src/qt/locale/bitcoin_ca.ts \
                src/qt/locale/bitcoin_ca@valencia.ts \
                src/qt/locale/bitcoin_ca_ES.ts \
                src/qt/locale/bitcoin_cs.ts \
                src/qt/locale/bitcoin_cy.ts \
                src/qt/locale/bitcoin_da.ts \
                src/qt/locale/bitcoin_de.ts \
                src/qt/locale/bitcoin_el.ts \
                src/qt/locale/bitcoin_el_GR.ts \
                src/qt/locale/bitcoin_en.ts \
                src/qt/locale/bitcoin_en_GB.ts \
                src/qt/locale/bitcoin_eo.ts \
                src/qt/locale/bitcoin_es.ts \
                src/qt/locale/bitcoin_es_AR.ts \
                src/qt/locale/bitcoin_es_CL.ts \
                src/qt/locale/bitcoin_es_CO.ts \
                src/qt/locale/bitcoin_es_DO.ts \
                src/qt/locale/bitcoin_es_ES.ts \
                src/qt/locale/bitcoin_es_MX.ts \
                src/qt/locale/bitcoin_es_UY.ts \
                src/qt/locale/bitcoin_es_VE.ts \
                src/qt/locale/bitcoin_et.ts \
                src/qt/locale/bitcoin_et_EE.ts \
                src/qt/locale/bitcoin_eu_ES.ts \
                src/qt/locale/bitcoin_fa.ts \
                src/qt/locale/bitcoin_fa_IR.ts \
                src/qt/locale/bitcoin_fi.ts \
                src/qt/locale/bitcoin_fr.ts \
                src/qt/locale/bitcoin_fr_CA.ts \
                src/qt/locale/bitcoin_fr_FR.ts \
                src/qt/locale/bitcoin_gl.ts \
                src/qt/locale/bitcoin_he.ts \
                src/qt/locale/bitcoin_hi_IN.ts \
                src/qt/locale/bitcoin_hr.ts \
                src/qt/locale/bitcoin_hu.ts \
                src/qt/locale/bitcoin_id_ID.ts \
                src/qt/locale/bitcoin_it.ts \
                src/qt/locale/bitcoin_it_IT.ts \
                src/qt/locale/bitcoin_ja.ts \
                src/qt/locale/bitcoin_ka.ts \
                src/qt/locale/bitcoin_kk_KZ.ts \
                src/qt/locale/bitcoin_ko_KR.ts \
                src/qt/locale/bitcoin_ku_IQ.ts \
                src/qt/locale/bitcoin_ky.ts \
                src/qt/locale/bitcoin_la.ts \
                src/qt/locale/bitcoin_lt.ts \
                src/qt/locale/bitcoin_lv_LV.ts \
                src/qt/locale/bitcoin_mk_MK.ts \
                src/qt/locale/bitcoin_mn.ts \
                src/qt/locale/bitcoin_ms_MY.ts \
                src/qt/locale/bitcoin_nb.ts \
                src/qt/locale/bitcoin_ne.ts \
                src/qt/locale/bitcoin_nl.ts \
                src/qt/locale/bitcoin_pam.ts \
                src/qt/locale/bitcoin_pl.ts \
                src/qt/locale/bitcoin_pt_BR.ts \
                src/qt/locale/bitcoin_pt_PT.ts \
                src/qt/locale/bitcoin_ro.ts \
                src/qt/locale/bitcoin_ro_RO.ts \
                src/qt/locale/bitcoin_ru.ts \
                src/qt/locale/bitcoin_ru_RU.ts \
                src/qt/locale/bitcoin_sk.ts \
                src/qt/locale/bitcoin_sl_SI.ts \
                src/qt/locale/bitcoin_sq.ts \
                src/qt/locale/bitcoin_sr.ts \
                src/qt/locale/bitcoin_sr@latin.ts \
                src/qt/locale/bitcoin_sv.ts \
                src/qt/locale/bitcoin_ta.ts \
                src/qt/locale/bitcoin_th_TH.ts \
                src/qt/locale/bitcoin_tr.ts \
                src/qt/locale/bitcoin_tr_TR.ts \
                src/qt/locale/bitcoin_uk.ts \
                src/qt/locale/bitcoin_ur_PK.ts \
                src/qt/locale/bitcoin_uz@Cyrl.ts \
                src/qt/locale/bitcoin_vi.ts \
                src/qt/locale/bitcoin_vi_VN.ts \
                src/qt/locale/bitcoin_zh.ts \
                src/qt/locale/bitcoin_zh_CN.ts \
                src/qt/locale/bitcoin_zh_HK.ts \
                src/qt/locale/bitcoin_zh_TW.ts
