const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const axios = require('axios');
require('dotenv').config();

// Variáveis para armazenar os sinais baseados no timeframe
let bitcoinSignalsOneMinute = [];
let bitcoinSignalsFiveMinute = [];
let bitcoinSignalsFifteenMinute = [];
let bitcoinSignalsFortyFiveMinute = [];
let bitcoinSignalsOneHour = [];
let bitcoinSignalsFortyFourHours = [];
let bitcoinSignalsOneDay = [];
let bitcoinSignalsOneWeek = [];
let bitcoinSignalsOneMonth = [];
let bitcoinSignalsThreeMonth = [];
let bitcoinSignalsSixMonth = [];
let bitcoinSignalsOneYear = [];

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
  } catch (error) {
    console.error('Erro ao enviar para o Telegram:', error.message);
  }
};

// Função para enviar o sinal para a rota '/compareSignalResultOperation'
const sendToCompareSignal = async (signal) => {
  try {
    const response = await axios.post('http://localhost:3000/comparesingnalresultoperationbitcoin', {
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

// Função para armazenar o sinal no banco de dados baseado no timeframe
const insertSignalIntoCorrectTable = async (ticker, orderType, price, interval, timenow) => {
  let signal;

  switch (interval) {
    case '1m': // 1 minuto
      signal = await prisma.bitcoinSignalOneMinute.create({
        data: {
          ticker,
          orderType,
          price: parseFloat(price),
          interval,
          createdAt: new Date(timenow),
        },
      });
      break;

    case '5m': // 5 minutos
      signal = await prisma.bitcoinSignalFiveMinute.create({
        data: {
          ticker,
          orderType,
          price: parseFloat(price),
          interval,
          createdAt: new Date(timenow),
        },
      });
      break;

    case '15m': // 15 minutos
      signal = await prisma.bitcoinSignalFifteenMinute.create({
        data: {
          ticker,
          orderType,
          price: parseFloat(price),
          interval,
          createdAt: new Date(timenow),
        },
      });
      break;

    case '45m': // 45 minutos
      signal = await prisma.bitcoinSignalFortyFiveMinute.create({
        data: {
          ticker,
          orderType,
          price: parseFloat(price),
          interval,
          createdAt: new Date(timenow),
        },
      });
      break;

    case '1h': // 1 hora
      signal = await prisma.bitcoinSignalOneHour.create({
        data: {
          ticker,
          orderType,
          price: parseFloat(price),
          interval,
          createdAt: new Date(timenow),
        },
      });
      break;

    case '4h': // 4 horas
      signal = await prisma.bitcoinSignalFourHours.create({
        data: {
          ticker,
          orderType,
          price: parseFloat(price),
          interval,
          createdAt: new Date(timenow),
        },
      });
      break;

    case '1d': // 1 dia
      signal = await prisma.bitcoinSignalOneDay.create({
        data: {
          ticker,
          orderType,
          price: parseFloat(price),
          interval,
          createdAt: new Date(timenow),
        },
      });
      break;

    case '1w': // 1 semana
      signal = await prisma.bitcoinSignalOneWeek.create({
        data: {
          ticker,
          orderType,
          price: parseFloat(price),
          interval,
          createdAt: new Date(timenow),
        },
      });
      break;

    case '1M': // 1 mês
      signal = await prisma.bitcoinSignalOneMonth.create({
        data: {
          ticker,
          orderType,
          price: parseFloat(price),
          interval,
          createdAt: new Date(timenow),
        },
      });
      break;

    case '3M': // 3 meses
      signal = await prisma.bitcoinSignalThreeMonth.create({
        data: {
          ticker,
          orderType,
          price: parseFloat(price),
          interval,
          createdAt: new Date(timenow),
        },
      });
      break;

    case '6M': // 6 meses
      signal = await prisma.bitcoinSignalSixMonth.create({
        data: {
          ticker,
          orderType,
          price: parseFloat(price),
          interval,
          createdAt: new Date(timenow),
        },
      });
      break;

    case '1y': // 1 ano
      signal = await prisma.bitcoinSignalOneYear.create({
        data: {
          ticker,
          orderType,
          price: parseFloat(price),
          interval,
          createdAt: new Date(timenow),
        },
      });
      break;

    default:
      throw new Error(`Intervalo de tempo não suportado: ${interval}`);
  }

  return signal;
};

// Função que recebe o sinal do TradingView
const bitcoinSignalsTradingView = async (req, res) => {
  try {
    const { ticker, interval, strategy, timenow } = req.body;

    // Verifica se todos os dados foram enviados corretamente
    if (!ticker || !interval || !strategy || !strategy.order || !strategy.order.action || !strategy.order.price || !timenow) {
      return res.status(400).json({ message: 'Dados insuficientes!' });
    }

    const orderType = strategy.order.action;
    const price = strategy.order.price;

    // Atribuir o sinal à variável correta com base no timeframe (interval)
    switch (interval) {
      case '1m':
        bitcoinSignalsOneMinute.push({ ticker, orderType, price, timenow });
        break;
      case '5m':
        bitcoinSignalsFiveMinute.push({ ticker, orderType, price, timenow });
        break;
      case '15m':
        bitcoinSignalsFifteenMinute.push({ ticker, orderType, price, timenow });
        break;
      case '45m':
        bitcoinSignalsFortyFiveMinute.push({ ticker, orderType, price, timenow });
        break;
      case '1h':
        bitcoinSignalsOneHour.push({ ticker, orderType, price, timenow });
        break;
      case '4h':
        bitcoinSignalsFortyFourHours.push({ ticker, orderType, price, timenow });
        break;
      case '1d':
        bitcoinSignalsOneDay.push({ ticker, orderType, price, timenow });
        break;
      case '1w':
        bitcoinSignalsOneWeek.push({ ticker, orderType, price, timenow });
        break;
      case '1M':
        bitcoinSignalsOneMonth.push({ ticker, orderType, price, timenow });
        break;
      case '3M':
        bitcoinSignalsThreeMonth.push({ ticker, orderType, price, timenow });
        break;
      case '6M':
        bitcoinSignalsSixMonth.push({ ticker, orderType, price, timenow });
        break;
      case '1y':
        bitcoinSignalsOneYear.push({ ticker, orderType, price, timenow });
        break;
      default:
        console.error('Timeframe não reconhecido:', interval);
        return res.status(400).json({ message: 'Timeframe não suportado.' });
    }

    // Formata a mensagem para o Telegram
    const message = `
      🚀 Sinal de ${orderType.toUpperCase()} em ${ticker}
      ⏳ Time frame: ${interval}
      💰 Preço: ${price}
      ⏲️ Horário do sinal: ${timenow}
    `;

    // Envia a mensagem para o Telegram
    await sendToTelegram(message);

    // Armazena o sinal no banco de dados usando a função de inserção correta
    const signal = await insertSignalIntoCorrectTable(ticker, orderType, price, interval, timenow);

    // Enviar o sinal armazenado para a rota /compareSignalResultOperation
    await sendToCompareSignal(signal);

    // Responde com sucesso após o sinal ser processado, armazenado e enviado
    res.status(201).json({ message: 'Sinal processado e enviado para comparação!', signal });
  } catch (error) {
    console.error('Erro ao processar o sinal:', error);
    res.status(500).json({ message: 'Erro interno ao processar o sinal.' });
  }
};

module.exports = bitcoinSignalsTradingView;
