-- Criação do banco de dados
CREATE DATABASE escola;
-- selecionar o BD para uso
USE escola;

-- Criar tabela aluno
-- Armazena os dados dos estudantes

CREATE TABLE alunos(
		-- Identificador único (PK - chave primária)
		id_aluno INT AUTO_INCREMENT PRIMARY KEY,
        
        -- Nome completo do aluno (obrigatório - NOT NULL)
        nome VARCHAR(100)  NOT NULL,
        
       -- Data de nascimento
       data_nascimento DATE,
       
		-- CPF único p/ cada aluno (Restrição de unicidade - UNIQUE)
        cpf VARCHAR(14) UNIQUE,
        
        -- Email do aluno
        email VARCHAR(100),
        
        -- Telefone de contato
        telefone VARCHAR(20),
        
        -- Data em que o aluno foi matriculado
        data_matriculado DATE NOT NULL
	
);

     --    ESSA TABELA EXECUTA SEPARADA DA TABELA ACIMA (DO ALUNO)

CREATE TABLE  professores(
		-- Identificador único professor
        id_professor INT AUTO_INCREMENT PRIMARY KEY,
        
        -- Nome do professor (Obrigatório - NOT NULL)
        nome VARCHAR(100) NOT NULL,
        
        -- Área de especialização (ex: Matemática, Informática)
        especialidade VARCHAR (100) NOT NULL, 
        
        -- Email do professor
        email VARCHAR(100) NOT NULL UNIQUE,
        
        -- Telefone do contato
        tefone VARCHAR(20)
);

-- Tabela de cursos
-- representa cursos oferecidos pela escola

CREATE TABLE cursos(
		-- Identificador único do curso
        id_curso INT AUTO_INCREMENT PRIMARY KEY,
        
        -- Nome do curso (obrigatório - NOT NULL)
        nome VARCHAR(100) NOT NULL, 
        
        -- CARGA HORÁRIA TOTAL DO CURSO EM HORAS
        carga_horária INT NOT NULL
);

