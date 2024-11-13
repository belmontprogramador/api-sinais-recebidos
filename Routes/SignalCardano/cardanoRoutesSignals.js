const express = require('express')

const signalCardano = express()

const cardanoSignalsTradingView = require('../../Controller/SignalsCardano/cardanoSignalsTradingView')
const cardanoCompareSingnalResultOperation = require('../../Controller/SignalsCardano/cardanoCompareSingnalResultOperation')
const getResultSignalCardano = require('../../Controller/SignalsCardano/getResultSignalCardano')
const sendResultsByPhoneCardano = require('../../Controller/SignalsCardano/getResultsSignalTelegramCardano')
const resetDatabase = require('../../Controller/SignalsCardano/resetbancocardano')

signalCardano.post('/signalcardano', cardanoSignalsTradingView)
signalCardano.post('/comparesingnalresultoperationcardano', cardanoCompareSingnalResultOperation)
signalCardano.post('/reset-databasecardano', resetDatabase)
signalCardano.get('/getresultsignalcardano', getResultSignalCardano)
signalCardano.post('/sendResultsByPhoneCardano', sendResultsByPhoneCardano)

module.exports = signalCardano