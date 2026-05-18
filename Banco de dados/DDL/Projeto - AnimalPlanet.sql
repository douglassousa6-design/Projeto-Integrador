-- =========================================================
-- DDL - BANCO DE DADOS Veterinário
-- =========================================================

-- =========================================================
-- CRIAÇÃO DO BANCO
-- =========================================================

CREATE DATABASE Animal_Planet;

USE Animal_Planet;


-- =========================================================
-- TABELA: Veterinário
-- =========================================================

CREATE TABLE veterinario (

	id_veterinario INT PRIMARY KEY AUTO_INCREMENT,

    nome VARCHAR(100) NOT NULL,

    email VARCHAR(100) UNIQUE NOT NULL,

	telefone VARCHAR(100), 
    
    senha_hash VARCHAR(255) NOT NULL

);


-- =========================================================
-- TABELA: Atendimentos
-- =========================================================

CREATE TABLE atendimento (

    id_atendimento INT PRIMARY KEY AUTO_INCREMENT,

    tipo_atendimento VARCHAR(100),

    preço VARCHAR(100),
    
	data_atendimento DATE,
    
    hora_atendimento TIME
    
);

CREATE TABLE cliente (
	
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco VARCHAR(200),
    cidade VARCHAR(100),
    estado CHAR(2),
    cep VARCHAR(10),
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP

); 

-- =========================================================
-- TABELA: Rcepcionista
-- =========================================================

CREATE TABLE recepcionista (

    id_recepcionista INT PRIMARY KEY AUTO_INCREMENT,
    
    nome VARCHAR(100) NOT NULL,

    email VARCHAR(100) UNIQUE NOT NULL,

    senha VARCHAR(50) NOT NULL
    

);


-- =========================================================
-- TABELA: ANIMAL
-- =========================================================

CREATE TABLE animal (

    id_animal INT PRIMARY KEY AUTO_INCREMENT,

    raca VARCHAR(200) NOT NULL,

    sexo VARCHAR(50),

    peso DECIMAL(5,2),

    data_nascimento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    id_cliente INT NOT NULL,

    id_atendimento INT,

    id_veterinario INT,


	FOREIGN KEY (id_cliente)
		REFERENCES cliente(id_cliente),
	FOREIGN KEY (id_atendimento)
		REFERENCES atendimento(id_atendimento),
    FOREIGN KEY (id_veterinario) 
		REFERENCES veterinario(id_veterinario)

);
 ,,,,