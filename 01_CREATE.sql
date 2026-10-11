/* ============================================================
   Autor: Cristian Matias de Souza
   Empresa: syspone
   Arquivo:  CREATE.sql
   Criado:   10/10/2026 20:44
   Banco: SQL_SERVER
   Descrição: DDL (Data Definition Language) — Tema: Facebook
   CREATE → cria | ALTER → altera | DROP → apaga
   ============================================================ */

USE GUIA_SQL;
GO

-- Apaga a tabela se já existir (para poder rodar o script de novo)
DROP TABLE IF EXISTS dbo.Usuarios;
GO

/* ---------- 1) CREATE TABLE — cria a tabela ---------- */
CREATE TABLE dbo.Usuarios
(
    UsuarioId INT IDENTITY (1, 1) PRIMARY KEY, -- número automático e único
    Nome      NVARCHAR(100) NOT NULL,          -- obrigatório
    Email     NVARCHAR(150) NOT NULL,          -- obrigatório
    Cidade    NVARCHAR(60)  NULL               -- opcional
);
GO
select * from dbo.Usuarios;

/* ---------- 2) ALTER TABLE — altera a tabela ---------- */

-- 2.1) Adicionar uma coluna
ALTER TABLE dbo.Usuarios
    ADD DataNascimento DATE NULL;

-- 2.2) Mudar o tamanho de uma coluna (60 → 80 caracteres)
ALTER TABLE dbo.Usuarios
    ALTER COLUMN Cidade NVARCHAR(80) NULL;

-- 2.3) Remover uma coluna
ALTER TABLE dbo.Usuarios
    DROP COLUMN Cidade;
GO

/* ---------- 3) DROP TABLE — apaga a tabela ---------- */

-- Criamos uma tabela de teste só para ver o DROP funcionando
CREATE TABLE dbo.Teste
(
    Id INT
);

DROP TABLE dbo.Teste; -- ⚠ apaga estrutura e dados, sem volta!
GO

/* ---------- Conferindo as colunas da tabela Usuarios ---------- */
SELECT COLUMN_NAME AS coluna,
       DATA_TYPE   AS tipo,
       IS_NULLABLE AS aceita_nulo
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Usuarios';
