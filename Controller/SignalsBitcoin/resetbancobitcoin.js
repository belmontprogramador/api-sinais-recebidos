const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const resetDatabase = async (req, res) => {
  try {
    // Apagar todas as entradas das tabelas de resultados de operações
    await prisma.bitcoinOperationResultOneMinute.deleteMany({});
    await prisma.bitcoinOperationResultFiveMinute.deleteMany({});
    await prisma.bitcoinOperationResultFifteenMinute.deleteMany({});
    await prisma.bitcoinOperationResultFortyFiveMinute.deleteMany({});
    await prisma.bitcoinOperationResultOneHour.deleteMany({});
    await prisma.bitcoinOperationResultFourHours.deleteMany({});
    await prisma.bitcoinOperationResultOneDay.deleteMany({});
    await prisma.bitcoinOperationResultOneWeek.deleteMany({});
    await prisma.bitcoinOperationResultOneMonth.deleteMany({});
    await prisma.bitcoinOperationResultThreeMonth.deleteMany({});
    await prisma.bitcoinOperationResultSixMonth.deleteMany({});
    await prisma.bitcoinOperationResultOneYear.deleteMany({});

    // Apagar todas as entradas das tabelas de sinais
    await prisma.bitcoinSignalOneMinute.deleteMany({});
    await prisma.bitcoinSignalFiveMinute.deleteMany({});
    await prisma.bitcoinSignalFifteenMinute.deleteMany({});
    await prisma.bitcoinSignalFortyFiveMinute.deleteMany({});
    await prisma.bitcoinSignalOneHour.deleteMany({});
    await prisma.bitcoinSignalFourHours.deleteMany({});
    await prisma.bitcoinSignalOneDay.deleteMany({});
    await prisma.bitcoinSignalOneWeek.deleteMany({});
    await prisma.bitcoinSignalOneMonth.deleteMany({});
    await prisma.bitcoinSignalThreeMonth.deleteMany({});
    await prisma.bitcoinSignalSixMonth.deleteMany({});
    await prisma.bitcoinSignalOneYear.deleteMany({});

    console.log('Banco de dados resetado com sucesso!');
    res.status(200).json({ message: 'Banco de dados resetado com sucesso!' });
  } catch (error) {
    console.error('Erro ao resetar o banco de dados:', error);
    res.status(500).json({ message: 'Erro ao resetar o banco de dados.' });
  }
};

module.exports = resetDatabase;
