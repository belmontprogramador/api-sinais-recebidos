-- CreateTable
CREATE TABLE "PolkadotSignalOneMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "PolkadotSignalOneMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotSignalFiveMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "PolkadotSignalFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotSignalFifteenMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "PolkadotSignalFifteenMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotSignalFortyFiveMinute" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "PolkadotSignalFortyFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotSignalOneHour" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "PolkadotSignalOneHour_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotSignalFourHours" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "PolkadotSignalFourHours_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotSignalOneDay" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "PolkadotSignalOneDay_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotSignalOneWeek" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "PolkadotSignalOneWeek_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotSignalOneMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "PolkadotSignalOneMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotSignalThreeMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "PolkadotSignalThreeMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotSignalSixMonth" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "PolkadotSignalSixMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotSignalOneYear" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "orderType" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "interval" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "PolkadotSignalOneYear_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotOperationResultOneMinute" (
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

    CONSTRAINT "PolkadotOperationResultOneMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotOperationResultFiveMinute" (
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

    CONSTRAINT "PolkadotOperationResultFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotOperationResultFifteenMinute" (
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

    CONSTRAINT "PolkadotOperationResultFifteenMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotOperationResultFortyFiveMinute" (
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

    CONSTRAINT "PolkadotOperationResultFortyFiveMinute_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotOperationResultOneHour" (
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

    CONSTRAINT "PolkadotOperationResultOneHour_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotOperationResultFourHours" (
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

    CONSTRAINT "PolkadotOperationResultFourHours_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotOperationResultOneDay" (
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

    CONSTRAINT "PolkadotOperationResultOneDay_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotOperationResultOneWeek" (
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

    CONSTRAINT "PolkadotOperationResultOneWeek_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotOperationResultOneMonth" (
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

    CONSTRAINT "PolkadotOperationResultOneMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotOperationResultThreeMonth" (
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

    CONSTRAINT "PolkadotOperationResultThreeMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotOperationResultSixMonth" (
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

    CONSTRAINT "PolkadotOperationResultSixMonth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PolkadotOperationResultOneYear" (
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

    CONSTRAINT "PolkadotOperationResultOneYear_pkey" PRIMARY KEY ("id")
);
