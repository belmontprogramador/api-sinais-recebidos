//bitcoinCompareSingnalResultOperation.js
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

// Função para determinar a tabela correta de sinais com base no intervalo de tempo
const getSignalTableByInterval = (interval) => {
  switch (parseInt(interval)) {
    case 1:
      return prisma.bitcoinSignalOneMinute;
    case 5:
      return prisma.bitcoinSignalFiveMinute;
    case 15:
      return prisma.bitcoinSignalFifteenMinute;
    case 45:
      return prisma.bitcoinSignalFortyFiveMinute;
    case 60:
      return prisma.bitcoinSignalOneHour;
    case 240:
      return prisma.bitcoinSignalFourHours;
    case 1440:
      return prisma.bitcoinSignalOneDay;
    case 10080:
      return prisma.bitcoinSignalOneWeek;
    case 43200:
      return prisma.bitcoinSignalOneMonth;
    case 129600:
      return prisma.bitcoinSignalThreeMonth;
    case 259200:
      return prisma.bitcoinSignalSixMonth;
    case 518400:
      return prisma.bitcoinSignalOneYear;
    default:
      throw new Error(`Intervalo de tempo não suportado: ${interval}`);
  }
};

// Função para determinar a tabela correta de resultados com base no intervalo de tempo
const getOperationResultTableByInterval = (interval) => {
  switch (parseInt(interval)) {
    case 1:
      return prisma.bitcoinOperationResultOneMinute;
    case 5:
      return prisma.bitcoinOperationResultFiveMinute;
    case 15:
      return prisma.bitcoinOperationResultFifteenMinute;
    case 45:
      return prisma.bitcoinOperationResultFortyFiveMinute;
    case 60:
      return prisma.bitcoinOperationResultOneHour;
    case 240:
      return prisma.bitcoinOperationResultFourHours;
    case 1440:
      return prisma.bitcoinOperationResultOneDay;
    case 10080:
      return prisma.bitcoinOperationResultOneWeek;
    case 43200:
      return prisma.bitcoinOperationResultOneMonth;
    case 129600:
      return prisma.bitcoinOperationResultThreeMonth;
    case 259200:
      return prisma.bitcoinOperationResultSixMonth;
    case 518400:
      return prisma.bitcoinOperationResultOneYear;
    default:
      throw new Error(`Intervalo de tempo não suportado: ${interval}`);
  }
};

// Função para comparar e analisar o resultado de operações
const bitcoinCompareSignalResultOperation = async (req, res) => {
  try {
    const { ticker, interval, orderType, price } = req.body;

    // Verifica se os dados foram fornecidos corretamente
    if (!ticker || !interval || !orderType || !price) {
      return res.status(400).json({ message: 'Dados insuficientes!' });
    }

    // Obtenha a tabela correta com base no time frame (intervalo)
    const signalTable = getSignalTableByInterval(parseInt(interval));

    // Busca o último registro da operação oposta no banco de dados
    const lastOppositeSignal = await signalTable.findFirst({
      where: {
        ticker,
        orderType: orderType === 'buy' ? 'sell' : 'buy', // busca o último sinal com tipo oposto
      },
      orderBy: {
        id: 'desc' // Ordena pelo ID em ordem decrescente para garantir que pegamos o último registro
      }
    });

    // Verifica se encontramos uma operação oposta
    if (!lastOppositeSignal) {
      console.error('Nenhuma operação oposta encontrada para comparação.');
      return res.status(404).json({ message: 'Nenhuma operação oposta encontrada para comparação.' });
    }

    let resultMessage;
    let resultType;

    // Calcula a diferença de preço entre o sinal atual e o último sinal oposto
    const priceDifference = Math.abs(price - lastOppositeSignal.price);

    // Compara o sinal atual com o último sinal oposto
    if (lastOppositeSignal.orderType === 'buy' && orderType === 'sell') {
      resultType = price < lastOppositeSignal.price ? 'loss' : 'win';
      resultMessage = `🚀 Resultado: ${ticker} ${resultType.toUpperCase()} 🚀\n⏳ Time frame: ${interval}\n📊 Preço de entrada (compra): ${lastOppositeSignal.price}\n📈 Preço de saída (venda): ${price}\n📉 Diferença de preço: ${priceDifference} pips`;
    } else if (lastOppositeSignal.orderType === 'sell' && orderType === 'buy') {
      resultType = price > lastOppositeSignal.price ? 'loss' : 'win';
      resultMessage = `🚀 Resultado:${ticker} ${resultType.toUpperCase()} 🚀\n⏳ Time frame: ${interval}\n📊 Preço de entrada (venda): ${lastOppositeSignal.price}\n📉 Preço de saída (compra): ${price}\n📉 Diferença de preço: ${priceDifference} pips`;
    } else {
      console.error('Os sinais não são compatíveis para comparação.');
      return res.status(400).json({ message: 'Os sinais não são compatíveis para comparação.' });
    }

    // Envia o resultado da operação para o Telegram
    await sendToTelegram(resultMessage);

    // Armazena o resultado da comparação na tabela de resultados correspondente ao time frame
    const resultTable = getOperationResultTableByInterval(parseInt(interval));
    const result = await resultTable.create({
      data: {
        ticker,
        interval: parseInt(interval),
        previousOrderType: lastOppositeSignal.orderType,
        previousPrice: lastOppositeSignal.price,
        currentOrderType: orderType,
        currentPrice: parseFloat(price),
        result: resultType,
        priceDifference: priceDifference, // Armazenando a diferença de preço
      }
    });

    // Responde com sucesso
    res.status(201).json({ message: 'Resultado da operação processado com sucesso!', result });
    console.log('Resultado da operação processado com sucesso:', result);

  } catch (error) {
    console.error('Erro ao processar a comparação dos sinais:', error.message);
    res.status(500).json({ message: 'Erro ao processar a comparação dos sinais.' });
  }
};

module.exports = bitcoinCompareSignalResultOperation;
