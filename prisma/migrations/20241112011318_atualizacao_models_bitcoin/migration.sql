/*
  Warnings:

  - Changed the type of `interval` on the `BitcoinOperationResultFifteenMinute` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinOperationResultFiveMinute` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinOperationResultFortyFiveMinute` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinOperationResultFourHours` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinOperationResultOneDay` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinOperationResultOneHour` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinOperationResultOneMinute` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinOperationResultOneMonth` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinOperationResultOneWeek` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinOperationResultOneYear` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinOperationResultSixMonth` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinOperationResultThreeMonth` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinSignalFifteenMinute` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinSignalFiveMinute` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinSignalFortyFiveMinute` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinSignalFourHours` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinSignalOneDay` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinSignalOneHour` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinSignalOneMinute` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinSignalOneMonth` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinSignalOneWeek` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinSignalOneYear` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinSignalSixMonth` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `interval` on the `BitcoinSignalThreeMonth` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "BitcoinOperationResultFifteenMinute" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinOperationResultFiveMinute" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinOperationResultFortyFiveMinute" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinOperationResultFourHours" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinOperationResultOneDay" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinOperationResultOneHour" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinOperationResultOneMinute" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinOperationResultOneMonth" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinOperationResultOneWeek" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinOperationResultOneYear" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinOperationResultSixMonth" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinOperationResultThreeMonth" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinSignalFifteenMinute" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinSignalFiveMinute" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinSignalFortyFiveMinute" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinSignalFourHours" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinSignalOneDay" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinSignalOneHour" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinSignalOneMinute" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinSignalOneMonth" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinSignalOneWeek" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinSignalOneYear" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinSignalSixMonth" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BitcoinSignalThreeMonth" DROP COLUMN "interval",
ADD COLUMN     "interval" INTEGER NOT NULL;
