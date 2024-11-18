// polkadotRoutesSignals.js
const express = require('express');
const signalPolkadot = express();

const polkadotSignalsTradingView = require('../../Controller/SignalsPolkadot/polkadotPostSignalTradingView.js');
const polkadotCompareSignalResultOperation = require('../../Controller/SignalsPolkadot/polkadotCompareSignalResultOperation.js');
const getResultSignalPolkadot = require('../../Controller/SignalsPolkadot/getResultSignalsPolkadot.js');
const sendResultsByPhonePolkadot = require('../../Controller/SignalsPolkadot/getResultsSignalTelegramPolkadot.js');

signalPolkadot.post('/signalpolkadot', polkadotSignalsTradingView);
signalPolkadot.post('/comparesignalresultoperationpolkadot', polkadotCompareSignalResultOperation);
signalPolkadot.get('/getResultSignalPolkadot', getResultSignalPolkadot);
signalPolkadot.post('/sendResultsByPhonePolkadot', sendResultsByPhonePolkadot);

module.exports = signalPolkadot;
