//bitcoinRoutesSignals.js
const express = require('express');
const signalBitcoin = express();

const bitcoinSignalsTradingView = require('../../Controller/SignalsBitcoin/bitcoinPostSignalTradingView.js');
const bitcoinCompareSignalResultOperation = require('../../Controller/SignalsBitcoin/bitcoinCompareSingnalResultOperation.js');
const resetDatabase = require('../../Controller/SignalsBitcoin/resetbancobitcoin.js');
const helloWorld = require('../../Controller/SignalsBitcoin/helloword.js');
const getResultSignalBitcoin = require('../../Controller/SignalsBitcoin/getResultSignalsBiticoin.js')
const sendResultsByPhoneBitcoin = require('../../Controller/SignalsBitcoin/getResultsSignalTelegramBitcoin.js')

signalBitcoin.post('/signalbitcoin', bitcoinSignalsTradingView);
signalBitcoin.post('/comparesignalresultoperationbitcoin', bitcoinCompareSignalResultOperation);
signalBitcoin.post('/reset-databasebitcoin', resetDatabase);
signalBitcoin.get('/hello', helloWorld);
signalBitcoin.get('/getResultSignalBitcoin', getResultSignalBitcoin)
signalBitcoin.post('/sendResultsByPhoneBitcoin', sendResultsByPhoneBitcoin )

module.exports = signalBitcoin;
