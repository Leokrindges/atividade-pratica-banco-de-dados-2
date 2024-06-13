-- CreateEnum
CREATE TYPE "Disponivel" AS ENUM ('SIM', 'NAO');

-- CreateTable
CREATE TABLE "produtos" (
    "id" SERIAL NOT NULL,
    "descricao" VARCHAR(255) NOT NULL,
    "valor" DECIMAL(8,2) NOT NULL,
    "quantidade_estoque" INTEGER NOT NULL,
    "tipo_produto" VARCHAR(255) NOT NULL,
    "data_hora_criacao" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "disponivel" "Disponivel" NOT NULL DEFAULT 'SIM',

    CONSTRAINT "produtos_pkey" PRIMARY KEY ("id")
);
