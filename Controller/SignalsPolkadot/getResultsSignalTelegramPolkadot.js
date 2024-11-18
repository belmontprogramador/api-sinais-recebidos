const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const axios = require('axios');
require('dotenv').config();

// Função auxiliar para enviar mensagens para o Telegram com o chat_id recebido na requisição
const sendToTelegram = async (chatId, message) => {
    const TELEGRAM_BOT_TOKEN = process.env.TELEGRAM_BOT_TOKEN;
    const telegramUrl = `https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage`;
  
    try {
      const response = await axios.post(telegramUrl, {
        chat_id: chatId,
        text: message,
      });
      console.log('Mensagem enviada ao Telegram:', message);
    } catch (error) {
      if (error.response) {
        // Logs para detalhes da resposta do erro
        console.error('Erro ao enviar para o Telegram:', error.response.data);
        console.error('Status Code:', error.response.status);
      } else {
        console.error('Erro ao enviar para o Telegram:', error.message);
      }
    }
};
  
// Função para obter a tabela correta com base no intervalo
const getOperationResultTableByInterval = (interval) => {
  switch (parseInt(interval)) {
    case 1:
      return prisma.polkadotOperationResultOneMinute;
    case 5:
      return prisma.polkadotOperationResultFiveMinute;
    case 15:
      return prisma.polkadotOperationResultFifteenMinute;
    default:
      throw new Error(`Intervalo de tempo não suportado: ${interval}`);
  }
};

// Função controladora para enviar os resultados por chat_id
const sendResultsByPhonePolkadot = async (req, res) => {
  const { chat_id, numero_de_telefone, mensagem } = req.body;

  try {
    const intervals = [1, 5, 15];
    const results = [];

    for (const interval of intervals) {
      const table = getOperationResultTableByInterval(interval);
      const intervalData = await table.findMany();

      let ticker = intervalData[0]?.ticker || 'Polkadot'; // Alterado para 'Polkadot'
      let winCount = 0;
      let lossCount = 0;
      let totalWinPips = 0;
      let totalLossPips = 0;

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

      results.push({
        ticker,
        interval,
        winCount,
        lossCount,
        successRate: successRate.toFixed(2) + '%',
        avgWinPips,
        avgLossPips,
        totalPipsResult: totalPips,
      });
    }

    // Formatação da mensagem com as três primeiras posições do array results
    const formattedMessage = results.slice(0, 3).map(result => `
      💹Resultado acumulado💹
      🚀 Moeda: ${result.ticker}🚀
      ⏳ Time frame: ${result.interval} minutos
      📊 Número de Vítorias: ${result.winCount}
      📉 Número de Derrotas: ${result.lossCount}
      💪🏾 Porcentagem de Acerto: ${result.successRate}
      🔵 Pips Positivos: ${result.avgWinPips}
      ⭕ Pips Negativos: ${result.avgLossPips}
      📊 Média de Pips: ${result.totalPipsResult}
    `).join('\n\n');

    // Envio da mensagem ao Telegram com o chat_id fornecido
    await sendToTelegram(chat_id, formattedMessage);
    res.status(200).json({ message: 'Mensagem enviada com sucesso!' });
  } catch (error) {
    console.error("Erro ao enviar mensagem:", error.message);
    res.status(500).json({ error: 'Erro ao enviar mensagem ao Telegram.' });
  }
};

module.exports = sendResultsByPhonePolkadot;
