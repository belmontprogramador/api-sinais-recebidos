// solanaPostSignalTradingView.js
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

// Função para enviar o sinal para a rota '/comparesignalresultoperationsolana'
const sendToCompareSignal = async (signal) => {
  try {
    const response = await axios.post('http://localhost:3004/comparesignalresultoperationsolana', {
      ticker: signal.ticker,
      orderType: signal.orderType,
      price: signal.price,
      interval: signal.interval,
    });
    console.log('Sinal enviado para /comparesignalresultoperationsolana com sucesso:', response.data);
  } catch (error) {
    console.error('Erro ao enviar o sinal para /comparesignalresultoperationsolana:', error.message);
    console.error('Dados do erro:', {
      url: 'http://localhost:3004/comparesignalresultoperationsolana',
      data: {
        ticker: signal.ticker,
        orderType: signal.orderType,
        price: signal.price,
        interval: signal.interval,
      },
      status: error.response ? error.response.status : 'sem status',
      headers: error.config ? error.config.headers : 'sem headers'
    });
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
      signal = await prisma.solanaSignalOneMinute.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 5:
      signal = await prisma.solanaSignalFiveMinute.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 15:
      signal = await prisma.solanaSignalFifteenMinute.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 45:
      signal = await prisma.solanaSignalFortyFiveMinute.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 60:
      signal = await prisma.solanaSignalOneHour.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 240:
      signal = await prisma.solanaSignalFourHours.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 1440:
      signal = await prisma.solanaSignalOneDay.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 10080:
      signal = await prisma.solanaSignalOneWeek.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 43200:
      signal = await prisma.solanaSignalOneMonth.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 129600:
      signal = await prisma.solanaSignalThreeMonth.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 259200:
      signal = await prisma.solanaSignalSixMonth.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    case 518400:
      signal = await prisma.solanaSignalOneYear.create({
        data: { ticker, orderType, price: parseFloat(price), interval, createdAt: new Date(timenow) },
      });
      break;
    default:
      throw new Error(`Intervalo de tempo não suportado: ${interval}`);
  }

  return signal;
};

// Função que recebe o sinal do TradingView no formato JSON e processa o sinal
const solanaSignalsTradingView = async (req, res) => {
  try {
    const { ticker, interval, orderType, price, timenow } = req.body;

    if (!ticker || interval == null || !orderType || !price || !timenow) {
      return res.status(400).json({ message: 'Dados insuficientes!' });
    }

    // Converte o intervalo para exibição no Telegram
    const intervalDisplay = intervalDisplayMap[parseInt(interval)] || interval;

    const message = `
      🚀 Sinal de ${orderType.toUpperCase()} em ${ticker}
      ⏳ Time frame: ${intervalDisplay}
      💰 Preço: ${price}
      ⏲️ Horário do sinal: ${timenow}
    `;

    await sendToTelegram(message);

    const signal = await insertSignalIntoCorrectTable(ticker, orderType, parseFloat(price), parseInt(interval), timenow);

    await sendToCompareSignal(signal);

    res.status(201).json({ message: 'Sinal processado e enviado para comparação!', signal });
  } catch (error) {
    console.error('Erro ao processar o sinal:', error);
    res.status(500).json({ message: 'Erro interno ao processar o sinal.' });
  }
};

module.exports = solanaSignalsTradingView;
