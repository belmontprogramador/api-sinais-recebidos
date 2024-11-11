/*
  Warnings:

  - Added the required column `priceDifference` to the `OperationResult` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "OperationResult" ADD COLUMN     "priceDifference" DOUBLE PRECISION NOT NULL;
