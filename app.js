const express = require('express');

const app = express();

app.use(express.json())

const signalBitcoin = require('./Routes/SignalBitcoin/bitcoinRoutesSignals')
const signalCardano = require('./Routes/SignalCardano/cardanoRoutesSignals')
const signalSolana = require('./Routes/SignalSolana/solanaRoutesSignals')
const signalPolkadot = require('./Routes/SignalPolkadot/polkadotRoutesSignals')

app.use(signalBitcoin)
app.use(signalCardano)
app.use(signalSolana)
app.use(signalPolkadot)

module.exports = app