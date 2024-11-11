const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const resetDatabase = async (req, res) => {
  try {
    // Apagar todas as entradas das tabelas de resultados de operações
    await prisma.operationResultOneMinute.deleteMany({});
    await prisma.operationResultFiveMinute.deleteMany({});
    await prisma.operationResultFifteenMinute.deleteMany({});
    await prisma.operationResultFortyFiveMinute.deleteMany({});
    await prisma.operationResultOneHour.deleteMany({});
    await prisma.operationResultFourHours.deleteMany({});
    await prisma.operationResultOneDay.deleteMany({});
    await prisma.operationResultOneWeek.deleteMany({});
    await prisma.operationResultOneMonth.deleteMany({});
    await prisma.operationResultThreeMonth.deleteMany({});
    await prisma.operationResultSixMonth.deleteMany({});
    await prisma.operationResultOneYear.deleteMany({});

    // Apagar todas as entradas das tabelas de sinais
    await prisma.signalOneMinute.deleteMany({});
    await prisma.signalFiveMinute.deleteMany({});
    await prisma.signalFifteenMinute.deleteMany({});
    await prisma.signalFortyFiveMinute.deleteMany({});
    await prisma.signalOneHour.deleteMany({});
    await prisma.signalFourHours.deleteMany({});
    await prisma.signalOneDay.deleteMany({});
    await prisma.signalOneWeek.deleteMany({});
    await prisma.signalOneMonth.deleteMany({});
    await prisma.signalThreeMonth.deleteMany({});
    await prisma.signalSixMonth.deleteMany({});
    await prisma.signalOneYear.deleteMany({});

    console.log('Banco de dados resetado com sucesso!');
    res.status(200).json({ message: 'Banco de dados resetado com sucesso!' });
  } catch (error) {
    console.error('Erro ao resetar o banco de dados:', error);
    res.status(500).json({ message: 'Erro ao resetar o banco de dados.' });
  }
};

module.exports = resetDatabase;
