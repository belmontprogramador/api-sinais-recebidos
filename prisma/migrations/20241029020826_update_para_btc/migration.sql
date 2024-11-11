/*
  Warnings:

  - You are about to drop the `OperationResultFifteenMinute` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `OperationResultFiveMinute` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `OperationResultFortyFiveMinute` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `OperationResultFourHours` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `OperationResultOneDay` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `OperationResultOneHour` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `OperationResultOneMinute` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `OperationResultOneMonth` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `OperationResultOneWeek` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `OperationResultOneYear` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `OperationResultSixMonth` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `OperationResultThreeMonth` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SignalFifteenMinute` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SignalFiveMinute` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SignalFortyFiveMinute` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SignalFourHours` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SignalOneDay` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SignalOneHour` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SignalOneMinute` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SignalOneMonth` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SignalOneWeek` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SignalOneYear` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SignalSixMonth` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SignalThreeMonth` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "OperationResultFifteenMinute";

-- DropTable
DROP TABLE "OperationResultFiveMinute";

-- DropTable
DROP TABLE "OperationResultFortyFiveMinute";

-- DropTable
DROP TABLE "OperationResultFourHours";

-- DropTable
DROP TABLE "OperationResultOneDay";

-- DropTable
DROP TABLE "OperationResultOneHour";

-- DropTable
DROP TABLE "OperationResultOneMinute";

-- DropTable
DROP TABLE "OperationResultOneMonth";

-- DropTable
DROP TABLE "OperationResultOneWeek";

-- DropTable
DROP TABLE "OperationResultOneYear";

-- DropTable
DROP TABLE "OperationResultSixMonth";

-- DropTable
DROP TABLE "OperationResultThreeMonth";

-- DropTable
DROP TABLE "SignalFifteenMinute";

-- DropTable
DROP TABLE "SignalFiveMinute";

-- DropTable
DROP TABLE "SignalFortyFiveMinute";

-- DropTable
DROP TABLE "SignalFourHours";

-- DropTable
DROP TABLE "SignalOneDay";

-- DropTable
DROP TABLE "SignalOneHour";

-- DropTable
DROP TABLE "SignalOneMinute";

-- DropTable
DROP TABLE "SignalOneMonth";

-- DropTable
DROP TABLE "SignalOneWeek";

-- DropTable
DROP TABLE "SignalOneYear";

-- DropTable
DROP TABLE "SignalSixMonth";

-- DropTable
DROP TABLE "SignalThreeMonth";

-- CreateTable
CREATE TABLE "BitcoinSignalOneMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BitcoinSignalOneMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinSignalFiveMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BitcoinSignalFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinSignalFifteenMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BitcoinSignalFifteenMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinSignalFortyFiveMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BitcoinSignalFortyFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinSignalOneHour" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BitcoinSignalOneHour_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinSignalFourHours" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BitcoinSignalFourHours_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinSignalOneDay" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BitcoinSignalOneDay_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinSignalOneWeek" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BitcoinSignalOneWeek_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinSignalOneMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BitcoinSignalOneMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinSignalThreeMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BitcoinSignalThreeMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinSignalSixMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BitcoinSignalSixMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinSignalOneYear" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BitcoinSignalOneYear_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinOperationResultOneMinute" (
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

    CONSTRAINT "BitcoinOperationResultOneMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinOperationResultFiveMinute" (
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

    CONSTRAINT "BitcoinOperationResultFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinOperationResultFifteenMinute" (
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

    CONSTRAINT "BitcoinOperationResultFifteenMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinOperationResultFortyFiveMinute" (
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

    CONSTRAINT "BitcoinOperationResultFortyFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinOperationResultOneHour" (
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

    CONSTRAINT "BitcoinOperationResultOneHour_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinOperationResultFourHours" (
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

    CONSTRAINT "BitcoinOperationResultFourHours_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinOperationResultOneDay" (
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

    CONSTRAINT "BitcoinOperationResultOneDay_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinOperationResultOneWeek" (
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

    CONSTRAINT "BitcoinOperationResultOneWeek_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinOperationResultOneMonth" (
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

    CONSTRAINT "BitcoinOperationResultOneMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinOperationResultThreeMonth" (
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

    CONSTRAINT "BitcoinOperationResultThreeMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinOperationResultSixMonth" (
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

    CONSTRAINT "BitcoinOperationResultSixMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BitcoinOperationResultOneYear" (
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

    CONSTRAINT "BitcoinOperationResultOneYear_pkey" PRIMARY KEY ("id")
);
