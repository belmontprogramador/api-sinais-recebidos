const express = require('express')

const signalBitcoin = express()

const bitcoinSignalsTradingView = require('../../Controller/SignalsBitcoin/bitcoinPostSignalTradingView.js')
const bitcoinCompareSingnalResultOperation = require('../../Controller/SignalsBitcoin/bitcoinCompareSingnalResultOperation.js')
const resetDatabase = require('../../Controller/SignalsBitcoin/resetbancobitcoin.js')

signalBitcoin.post('/signalbitcoin', bitcoinSignalsTradingView)
signalBitcoin.post('/comparesingnalresultoperationbitcoin', bitcoinCompareSingnalResultOperation)
signalBitcoin.post('/resetdatabasebitcoin', resetDatabase)

module.exports = signalBitcoin