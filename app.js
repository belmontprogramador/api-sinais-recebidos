const express = require('express');

const app = express();

app.use(express.json())

const signalBitcoin = require('./Routes/SignalBitcoin/bitcoinRoutesSignals')
const signalSolana = require('./Routes/SignalSolana/solanaRoutesSignals')

app.use(signalBitcoin)
app.use(signalSolana)

module.exports = app