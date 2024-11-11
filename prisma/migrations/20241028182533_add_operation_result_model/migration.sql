-- CreateTable
CREATE TABLE "OperationResult" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "interval" TEXT NOT NULL,
    "previousOrderType" TEXT NOT NULL,
    "previousPrice" DOUBLE PRECISION NOT NULL,
    "currentOrderType" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "result" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "OperationResult_pkey" PRIMARY KEY ("id")
);
