const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const axios = require('axios');
require('dotenv').config();
const cron = require('node-cron');

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

// Função para obter a tabela correta com base no intervalo
const getOperationResultTableByInterval = (interval) => {
  switch (parseInt(interval)) {
    case 1:
      return prisma.bitcoinOperationResultOneMinute;
    case 5:
      return prisma.bitcoinOperationResultFiveMinute;
    case 15:
      return prisma.bitcoinOperationResultFifteenMinute;
    default:
      throw new Error(`Intervalo de tempo não suportado: ${interval}`);
  }
};

// Função principal que coleta os dados e processa os resultados
const getBitcoinResults = async () => {
  // Filtro para os intervalos de 1, 5 e 15 minutos
  const intervals = [1, 5, 15];
  const results = [];
  let ticker = "";

  for (const interval of intervals) {
    const table = getOperationResultTableByInterval(interval);
    const intervalData = await table.findMany();

    if (intervalData.length > 0) {
      ticker = intervalData[0].ticker; // Assume que o ticker está na segunda posição (após o ID)
    }

    let winCount = 0;
    let lossCount = 0;
    let totalWinPips = 0;
    let totalLossPips = 0;

    // Processa cada operação para calcular wins, losses e pips
    for (const operation of intervalData) {
      const pipDifference = Math.abs(operation.previousPrice - operation.currentPrice);

      if (operation.result === 'win') {
        winCount++;
        totalWinPips += pipDifference;
      } else if (operation.result === 'loss') {
        lossCount++;
        totalLossPips += pipDifference;
      }
    }

    const totalOperations = winCount + lossCount;
    const successRate = totalOperations ? (winCount / totalOperations) * 100 : 0;
    const avgWinPips = winCount ? totalWinPips / winCount : 0;
    const avgLossPips = lossCount ? totalLossPips / lossCount : 0;
    const totalPips = totalWinPips - totalLossPips;

    // Adiciona os resultados calculados ao array final
    results.push({
      ticker: ticker,
      interval: interval,
      winCount: winCount,
      lossCount: lossCount,
      successRate: successRate.toFixed(2) + '%',
      avgWinPips: avgWinPips,
      avgLossPips: avgLossPips,
      totalPipsResult: totalPips,
    });
  }

  return results;
};

// Função para enviar os resultados ao Telegram
const sendResultsToTelegram = async (results) => {
  if (results.length > 0) {
    for (let i = 0; i < results.length; i++) {
      const result = results[i];
      const message = `
      💹Resultado acumulado💹
      🚀 Moeda: ${result.ticker}🚀
      ⏳ Time frame: ${result.interval} minutos
      📊 Número de Vítorias: ${result.winCount}
      📉 Número de Derrotas: ${result.lossCount}
      💪🏾 Porcentagem de Acerto: ${result.successRate}
      🔵 Pips Positivos: ${result.avgWinPips}
      ⭕ Pips Negativos: ${result.avgLossPips}
      📊 Média de Pips: ${result.totalPipsResult}`;

      // Envia a mensagem para o Telegram
      await sendToTelegram(message);
    }
  }
};

// Rota HTTP
const getResultSignalBitcoin = async (req, res) => {
  try {
    const results = await getBitcoinResults();

    // Envia os resultados no corpo da resposta HTTP
    res.status(200).json(results);

    // Envia os resultados para o Telegram
    await sendResultsToTelegram(results);

  } catch (error) {
    console.error("Erro ao obter dados:", error.message);
    res.status(500).json({ error: 'Erro ao obter dados dos sinais de Bitcoin.' });
  }
};

// Agendando a execução da função para o cron (10h e 20h todos os dias)
cron.schedule('0 10,20 * * *', async () => {
  console.log('Enviando relatório diário para o Telegram...');
  try {
    // Chama a função principal para obter os resultados
    const results = await getBitcoinResults();

    // Envia os resultados para o Telegram
    await sendResultsToTelegram(results);
  } catch (error) {
    console.error('Erro ao agendar a tarefa:', error.message);
  }
});

module.exports = getResultSignalBitcoin;
