/*
  Warnings:

  - Added the required column `testAuthorId` to the `Post` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Post" ADD COLUMN     "testAuthorId" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "Testuser" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT,
    "password" TEXT NOT NULL,

    CONSTRAINT "Testuser_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Testuser_email_key" ON "Testuser"("email");

-- AddForeignKey
ALTER TABLE "Post" ADD CONSTRAINT "Post_testAuthorId_fkey" FOREIGN KEY ("testAuthorId") REFERENCES "Testuser"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
