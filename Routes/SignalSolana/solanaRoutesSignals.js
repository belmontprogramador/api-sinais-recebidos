// solanaRoutesSignals.js
const express = require('express');
const signalSolana = express();

const solanaSignalsTradingView = require('../../Controller/SignalsSolana/solanaPostSignalTradingView.js');
const solanaCompareSignalResultOperation = require('../../Controller/SignalsSolana/solanaCompareSingnalResultOperation.js');
const getResultSignalSolana = require('../../Controller/SignalsSolana/getResultSignalsSolana.js');
const sendResultsByPhoneSolana = require('../../Controller/SignalsSolana/getResultsSignalTelegramSolana.js');

signalSolana.post('/signalsolana', solanaSignalsTradingView);
signalSolana.post('/comparesignalresultoperationsolana', solanaCompareSignalResultOperation);
signalSolana.get('/getResultSignalSolana', getResultSignalSolana);
signalSolana.post('/sendResultsByPhoneSolana', sendResultsByPhoneSolana);

module.exports = signalSolana;
