-- =========================================================
-- DDL - BANCO DE DADOS EDUPLAN
-- =========================================================

-- =========================================================
-- CRIAÇÃO DO BANCO
-- =========================================================

CREATE DATABASE eduplan;

USE eduplan;


-- =========================================================
-- TABELA: PROFESSORES
-- =========================================================

CREATE TABLE professores (

    id_professor INT PRIMARY KEY AUTO_INCREMENT,

    nome VARCHAR(100) NOT NULL,

    email VARCHAR(100) UNIQUE NOT NULL,

    senha_hash VARCHAR(255) NOT NULL

);


-- =========================================================
-- TABELA: DISCIPLINAS
-- =========================================================

CREATE TABLE disciplinas (

    id_disciplina INT PRIMARY KEY AUTO_INCREMENT,

    nome_disciplina VARCHAR(100) NOT NULL,

    area_conhecimento VARCHAR(100)

);


-- =========================================================
-- TABELA: SERIES
-- =========================================================

CREATE TABLE series (

    id_serie INT PRIMARY KEY AUTO_INCREMENT,

    nome_serie VARCHAR(100) NOT NULL,

    nivel VARCHAR(50)

);


-- =========================================================
-- TABELA: ATIVIDADES
-- =========================================================

CREATE TABLE atividades (

    id_atividade INT PRIMARY KEY AUTO_INCREMENT,

    titulo VARCHAR(200) NOT NULL,

    conteudo TEXT,

    metodologia TEXT,

    objetivos TEXT,

    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    id_professor INT,

    id_disciplina INT,

    id_serie INT,


    -- RELACIONAMENTO COM PROFESSORES
    FOREIGN KEY (id_professor)
        REFERENCES professores(id_professor),

    -- RELACIONAMENTO COM DISCIPLINAS
    FOREIGN KEY (id_disciplina)
        REFERENCES disciplinas(id_disciplina),

    -- RELACIONAMENTO COM SERIES
    FOREIGN KEY (id_serie)
        REFERENCES series(id_serie)

);