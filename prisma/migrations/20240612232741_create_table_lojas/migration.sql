-- CreateEnum
CREATE TYPE "Segmento" AS ENUM ('Alimentacao', 'Construcao', 'Farmaceutico');

-- CreateTable
CREATE TABLE "lojas" (
    "id" TEXT NOT NULL,
    "nome" VARCHAR(255) NOT NULL,
    "segmento" "Segmento" NOT NULL DEFAULT 'Alimentacao',
    "endereco" VARCHAR(255) NOT NULL,
    "telefone" INTEGER,
    "quantidade_filiais" INTEGER NOT NULL,
    "data_hora_abertura" TIMESTAMP NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "lojas_id_key" ON "lojas"("id");
