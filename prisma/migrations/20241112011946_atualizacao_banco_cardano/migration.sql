-- CreateTable
CREATE TABLE "CardanoSignalOneMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoSignalOneMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoSignalFiveMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoSignalFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoSignalFifteenMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoSignalFifteenMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoSignalFortyFiveMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoSignalFortyFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoSignalOneHour" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoSignalOneHour_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoSignalFourHours" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoSignalFourHours_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoSignalOneDay" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoSignalOneDay_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoSignalOneWeek" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoSignalOneWeek_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoSignalOneMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoSignalOneMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoSignalThreeMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoSignalThreeMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoSignalSixMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoSignalSixMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoSignalOneYear" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoSignalOneYear_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoOperationResultOneMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" INTEGER NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoOperationResultOneMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoOperationResultFiveMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" INTEGER NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoOperationResultFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoOperationResultFifteenMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" INTEGER NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoOperationResultFifteenMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoOperationResultFortyFiveMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" INTEGER NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoOperationResultFortyFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoOperationResultOneHour" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" INTEGER NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoOperationResultOneHour_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoOperationResultFourHours" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" INTEGER NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoOperationResultFourHours_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoOperationResultOneDay" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" INTEGER NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoOperationResultOneDay_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoOperationResultOneWeek" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" INTEGER NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoOperationResultOneWeek_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoOperationResultOneMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" INTEGER NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoOperationResultOneMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoOperationResultThreeMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" INTEGER NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoOperationResultThreeMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoOperationResultSixMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" INTEGER NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoOperationResultSixMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CardanoOperationResultOneYear" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" INTEGER NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "priceDifference" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "CardanoOperationResultOneYear_pkey" PRIMARY KEY ("id")
);
