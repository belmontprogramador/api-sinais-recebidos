const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const resetDatabase = async (req, res) => {
  try {
    // Apagar todas as entradas das tabelas de resultados de operações
    await prisma.cardanoOperationResultOneMinute.deleteMany({});
    await prisma.cardanoOperationResultFiveMinute.deleteMany({});
    await prisma.cardanoOperationResultFifteenMinute.deleteMany({});
    await prisma.cardanoOperationResultFortyFiveMinute.deleteMany({});
    await prisma.cardanoOperationResultOneHour.deleteMany({});
    await prisma.cardanoOperationResultFourHours.deleteMany({});
    await prisma.cardanoOperationResultOneDay.deleteMany({});
    await prisma.cardanoOperationResultOneWeek.deleteMany({});
    await prisma.cardanoOperationResultOneMonth.deleteMany({});
    await prisma.cardanoOperationResultThreeMonth.deleteMany({});
    await prisma.cardanoOperationResultSixMonth.deleteMany({});
    await prisma.cardanoOperationResultOneYear.deleteMany({});

    // Apagar todas as entradas das tabelas de sinais
    await prisma.cardanoSignalOneMinute.deleteMany({});
    await prisma.cardanoSignalFiveMinute.deleteMany({});
    await prisma.cardanoSignalFifteenMinute.deleteMany({});
    await prisma.cardanoSignalFortyFiveMinute.deleteMany({});
    await prisma.cardanoSignalOneHour.deleteMany({});
    await prisma.cardanoSignalFourHours.deleteMany({});
    await prisma.cardanoSignalOneDay.deleteMany({});
    await prisma.cardanoSignalOneWeek.deleteMany({});
    await prisma.cardanoSignalOneMonth.deleteMany({});
    await prisma.cardanoSignalThreeMonth.deleteMany({});
    await prisma.cardanoSignalSixMonth.deleteMany({});
    await prisma.cardanoSignalOneYear.deleteMany({});

    console.log('Banco de dados do Cardano resetado com sucesso!');
    res.status(200).json({ message: 'Banco de dados do Cardano resetado com sucesso!' });
  } catch (error) {
    console.error('Erro ao resetar o banco de dados do Cardano:', error);
    res.status(500).json({ message: 'Erro ao resetar o banco de dados do Cardano.' });
  }
};

module.exports = resetDatabase;
