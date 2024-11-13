const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const axios = require('axios');
require('dotenv').config();

// Função para enviar mensagens para o Telegram
const sendToTelegram = async (message) => {
  const TELEGRAM_BOT_TOKEN = process.env.TELEGRAM_BOT_TOKEN;
  const TELEGRAM_CHAT_ID = process.env.TELEGRAM_CHAT_ID;
  
  const telegramUrl = `https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage`;

  try {
    await axios.post(telegramUrl, {
      chat_id: TELEGRAM_CHAT_ID,
      text: message,
    });
    console.log('Mensagem enviada ao Telegram:', message);
  } catch (error) {
    console.error('Erro ao enviar para o Telegram:', error.message);
  }
};

// Função para enviar o sinal para a rota '/compareSignalResultOperation'
const sendToCompareSignal = async (signal) => {
  try {
    const response = await axios.post('http://localhost:3004/comparesingnalresultoperationcardano', {
      ticker: signal.ticker,
      orderType: signal.orderType,
      price: signal.price,
      interval: signal.interval,
    });
    console.log('Sinal enviado para /compareSignalResultOperation:', response.data);
  } catch (error) {
    console.error('Erro ao enviar o sinal para /compareSignalResultOperation:', error.message);
  }
};

// Mapeamento dos intervalos para exibição no Telegram
const intervalDisplayMap = {
  1: '1m',
  5: '5m',
  15: '15m',
  45: '45m',
  60: '1h',
  240: '4h',
  1440: '1d',
  10080: '1w',
  43200: '1M',
  129600: '3M',
  259200: '6M',
  518400: '1y',
};

// Função para armazenar o sinal no banco de dados baseado no timeframe
const insertSignalIntoCorrectTable = async (ticker, orderType, price, interval, timenow) => {
  let signal;

  switch (parseInt(interval)) {
    case 1:
      signal = await prisma.cardanoSignalOneMinute.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 5:
      signal = await prisma.cardanoSignalFiveMinute.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 15:
      signal = await prisma.cardanoSignalFifteenMinute.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 45:
      signal = await prisma.cardanoSignalFortyFiveMinute.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 60:
      signal = await prisma.cardanoSignalOneHour.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 240:
      signal = await prisma.cardanoSignalFourHours.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 1440:
      signal = await prisma.cardanoSignalOneDay.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 10080:
      signal = await prisma.cardanoSignalOneWeek.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 43200:
      signal = await prisma.cardanoSignalOneMonth.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 129600:
      signal = await prisma.cardanoSignalThreeMonth.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 259200:
      signal = await prisma.cardanoSignalSixMonth.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 518400:
      signal = await prisma.cardanoSignalOneYear.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    default:
      throw new Error(`Intervalo de tempo não suportado: ${interval}`);
  }

  return signal;
};

// Função que recebe o sinal do TradingView no formato JSON e processa o sinal
const cardanoSignalsTradingView = async (req, res) => {
  try {
    const { ticker, interval, orderType, price, timenow } = req.body;

    if (!ticker || !interval || !orderType || !price || !timenow) {
      return res.status(400).json({ message: 'Dados insuficientes!' });
    }

    // Converte o intervalo para exibição no Telegram
    const intervalDisplay = intervalDisplayMap[parseInt(interval)] || interval;

    const message = `
      🚀 Sinal de ${orderType.toUpperCase()} em ${ticker}
      ⏳ Time frame: ${intervalDisplay}
      💰 Preço: ${price}
      ⏲️ Horário do sinal: ${timenow}`
    ;

    await sendToTelegram(message);

    const signal = await insertSignalIntoCorrectTable(ticker, orderType, parseFloat(price), parseInt(interval), timenow);

    await sendToCompareSignal(signal);

    res.status(201).json({ message: 'Sinal processado e enviado para comparação!', signal });
  } catch (error) {
    console.error('Erro ao processar o sinal:', error);
    res.status(500).json({ message: 'Erro interno ao processar o sinal.' });
  }
};

module.exports = cardanoSignalsTradingView;