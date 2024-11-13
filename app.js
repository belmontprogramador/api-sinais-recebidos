const express = require('express');

const app = express();

app.use(express.json())

const signalBitcoin = require('./Routes/SignalBitcoin/bitcoinRoutesSignals')
const signalCardano = require('./Routes/SignalCardano/cardanoRoutesSignals')

app.use(signalBitcoin)
app.use(signalCardano)

module.exports = app