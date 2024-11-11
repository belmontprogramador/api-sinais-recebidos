/*
  Warnings:

  - You are about to drop the `OperationResult` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Signal` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "OperationResult";

-- DropTable
DROP TABLE "Signal";

-- CreateTable
CREATE TABLE "SignalOneMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SignalOneMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SignalFiveMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SignalFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SignalFifteenMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SignalFifteenMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SignalFortyFiveMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SignalFortyFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SignalOneHour" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SignalOneHour_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SignalFourHours" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SignalFourHours_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SignalOneDay" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SignalOneDay_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SignalOneWeek" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SignalOneWeek_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SignalOneMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SignalOneMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SignalThreeMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SignalThreeMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SignalSixMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SignalSixMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SignalOneYear" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SignalOneYear_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "OperationResultOneMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" TEXT NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "OperationResultOneMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "OperationResultFiveMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" TEXT NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "OperationResultFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "OperationResultFifteenMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" TEXT NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "OperationResultFifteenMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "OperationResultFortyFiveMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" TEXT NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "OperationResultFortyFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "OperationResultOneHour" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" TEXT NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "OperationResultOneHour_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "OperationResultFourHours" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" TEXT NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "OperationResultFourHours_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "OperationResultOneDay" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" TEXT NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "OperationResultOneDay_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "OperationResultOneWeek" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" TEXT NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "OperationResultOneWeek_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "OperationResultOneMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" TEXT NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "OperationResultOneMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "OperationResultThreeMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" TEXT NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "OperationResultThreeMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "OperationResultSixMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" TEXT NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "OperationResultSixMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "OperationResultOneYear" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" TEXT NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "OperationResultOneYear_pkey" PRIMARY KEY ("id")
);
