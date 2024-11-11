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

// Função para determinar a tabela correta com base no time frame
const getSignalTableByInterval = (interval) => {
  switch (interval) {
    case '1m':
      return prisma.bitcoinSignalOneMinute;
    case '5m':
      return prisma.bitcoinSignalFiveMinute;
    case '15m':
      return prisma.bitcoinSignalFifteenMinute;
    case '45m':
      return prisma.bitcoinSignalFortyFiveMinute;
    case '1h':
      return prisma.bitcoinSignalOneHour;
    case '4h':
      return prisma.bitcoinSignalFourHours;
    case '1d':
      return prisma.bitcoinSignalOneDay;
    case '1w':
      return prisma.bitcoinSignalOneWeek;
    case '1M':
      return prisma.bitcoinSignalOneMonth;
    case '3M':
      return prisma.bitcoinSignalThreeMonth;
    case '6M':
      return prisma.bitcoinSignalSixMonth;
    case '1y':
      return prisma.bitcoinSignalOneYear;
    default:
      throw new Error(`Intervalo de tempo não suportado: ${interval}`);
  }
};

// Função para determinar a tabela correta de resultados com base no time frame
const getOperationResultTableByInterval = (interval) => {
  switch (interval) {
    case '1m':
      return prisma.bitcoinOperationResultOneMinute;
    case '5m':
      return prisma.bitcoinOperationResultFiveMinute;
    case '15m':
      return prisma.bitcoinOperationResultFifteenMinute;
    case '45m':
      return prisma.bitcoinOperationResultFortyFiveMinute;
    case '1h':
      return prisma.bitcoinOperationResultOneHour;
    case '4h':
      return prisma.bitcoinOperationResultFourHours;
    case '1d':
      return prisma.bitcoinOperationResultOneDay;
    case '1w':
      return prisma.bitcoinOperationResultOneWeek;
    case '1M':
      return prisma.bitcoinOperationResultOneMonth;
    case '3M':
      return prisma.bitcoinOperationResultThreeMonth;
    case '6M':
      return prisma.bitcoinOperationResultSixMonth;
    case '1y':
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
    const signalTable = getSignalTableByInterval(interval);

    // Busca o último registro da operação oposta no banco de dados
    const lastOppositeSignal = await signalTable.findFirst({
      where: {
        ticker,
        interval,
        orderType: orderType === 'buy' ? 'sell' : 'buy' // busca o último sinal com tipo oposto
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

    console.log({mensagetesk: lastOppositeSignal}); // Log para checar o último registro buscado

    let resultMessage;
    let resultType;

    // Calcula a diferença de preço entre o sinal atual e o último sinal oposto
    const priceDifference = Math.abs(price - lastOppositeSignal.price);

    // Compara o sinal atual com o último sinal oposto
    if (lastOppositeSignal.orderType === 'buy' && orderType === 'sell') {
        resultType = price < lastOppositeSignal.price ? 'loss' : 'win';  // Se o preço atual de venda for menor que o preço de compra, é loss
        resultMessage = `🚀 Resultado: ${resultType.toUpperCase()} 🚀\n📊 Preço de entrada (compra): ${lastOppositeSignal.price}\n📈 Preço de saída (venda): ${price}\n📉 Diferença de preço: ${priceDifference} pips`;
      } else if (lastOppositeSignal.orderType === 'sell' && orderType === 'buy') {
        resultType = price > lastOppositeSignal.price ? 'loss' : 'win';  // Se o preço atual de compra for maior que o preço de venda, é loss
        resultMessage = `🚀 Resultado: ${resultType.toUpperCase()} 🚀\n📊 Preço de entrada (venda): ${lastOppositeSignal.price}\n📉 Preço de saída (compra): ${price}\n📉 Diferença de preço: ${priceDifference} pips`;
      } else {
        console.error('Os sinais não são compatíveis para comparação.');
        return res.status(400).json({ message: 'Os sinais não são compatíveis para comparação.' });
      }

    // Envia o resultado da operação para o Telegram
    await sendToTelegram(resultMessage);

    // Armazena o resultado da comparação na tabela de resultados correspondente ao time frame
    const resultTable = getOperationResultTableByInterval(interval);
    const result = await resultTable.create({
      data: {
        ticker,
        interval,
        previousOrderType: lastOppositeSignal.orderType,
        previousPrice: lastOppositeSignal.price,
        currentOrderType: orderType,
        currentPrice: parseFloat(price),
        result: resultType,
        priceDifference: priceDifference // Armazenando a diferença de preço
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
