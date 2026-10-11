/* ============================================================
   Autor: Cristian Matias de Souza
   Empresa: syspone
   Arquivo:  02_insert_usuarios.sql
   Criado:   10/10/2026 21:19
   Banco: SQL_SERVER
   Descrição: DML — INSERT na tabela Usuarios (tema: Facebook)
   ============================================================ */

USE GUIA_SQL;
GO

INSERT INTO dbo.Usuarios (Nome, Email, DataNascimento, Cidade)
VALUES (N'Ana Souza',        N'ana.souza@email.com',        '1995-03-12', N'São Paulo'),
       (N'Bruno Lima',       N'bruno.lima@email.com',       '1988-07-25', N'Rio de Janeiro'),
       (N'Carla Mendes',     N'carla.mendes@email.com',     '2000-11-02', N'Belo Horizonte'),
       (N'Diego Ferreira',   N'diego.ferreira@email.com',   '1992-01-30', N'Curitiba'),
       (N'Elisa Rocha',      N'elisa.rocha@email.com',      '1998-06-18', N'Porto Alegre'),
       (N'Felipe Andrade',   N'felipe.andrade@email.com',   '1985-09-09', N'Salvador'),
       (N'Gabriela Costa',   N'gabriela.costa@email.com',   '2001-04-22', N'Recife'),
       (N'Henrique Alves',   N'henrique.alves@email.com',   '1990-12-05', N'Fortaleza'),
       (N'Isabela Martins',  N'isabela.martins@email.com',  '1997-08-14', N'Florianópolis'),
       (N'João Pereira',     N'joao.pereira@email.com',     '1993-02-27', NULL); -- Cidade é opcional
GO

-- Conferindo
SELECT * FROM dbo.Usuarios;
