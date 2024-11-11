const express = require('express')

const signalSolana = express()

const solanaSignalsTradingView = require('../../Controller/SignalsSolana/solanaSignalsTradingView')
const solanaCompareSingnalResultOperation = require('../../Controller/SignalsSolana/solanaCompareSingnalResultOperation')
const resetDatabase = require('../../Controller/SignalsSolana/resetbancosolana')

signalSolana.post('/signalsolana', solanaSignalsTradingView)
signalSolana.post('/comparesingnalresultoperationsolona', solanaCompareSingnalResultOperation)
signalSolana.post('/resetdatabasesolana', resetDatabase)

module.exports = signalSolana