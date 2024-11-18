-- CreateTable
CREATE TABLE "SolanaSignalOneMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SolanaSignalOneMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaSignalFiveMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SolanaSignalFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaSignalFifteenMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SolanaSignalFifteenMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaSignalFortyFiveMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SolanaSignalFortyFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaSignalOneHour" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SolanaSignalOneHour_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaSignalFourHours" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SolanaSignalFourHours_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaSignalOneDay" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SolanaSignalOneDay_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaSignalOneWeek" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SolanaSignalOneWeek_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaSignalOneMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SolanaSignalOneMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaSignalThreeMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SolanaSignalThreeMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaSignalSixMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SolanaSignalSixMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaSignalOneYear" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SolanaSignalOneYear_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaOperationResultOneMinute" (
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

    CONSTRAINT "SolanaOperationResultOneMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaOperationResultFiveMinute" (
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

    CONSTRAINT "SolanaOperationResultFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaOperationResultFifteenMinute" (
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

    CONSTRAINT "SolanaOperationResultFifteenMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaOperationResultFortyFiveMinute" (
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

    CONSTRAINT "SolanaOperationResultFortyFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaOperationResultOneHour" (
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

    CONSTRAINT "SolanaOperationResultOneHour_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaOperationResultFourHours" (
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

    CONSTRAINT "SolanaOperationResultFourHours_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaOperationResultOneDay" (
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

    CONSTRAINT "SolanaOperationResultOneDay_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaOperationResultOneWeek" (
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

    CONSTRAINT "SolanaOperationResultOneWeek_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaOperationResultOneMonth" (
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

    CONSTRAINT "SolanaOperationResultOneMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaOperationResultThreeMonth" (
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

    CONSTRAINT "SolanaOperationResultThreeMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaOperationResultSixMonth" (
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

    CONSTRAINT "SolanaOperationResultSixMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolanaOperationResultOneYear" (
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

    CONSTRAINT "SolanaOperationResultOneYear_pkey" PRIMARY KEY ("id")
);
