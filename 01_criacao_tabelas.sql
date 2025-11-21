-- Criação do banco de dados e das tabelas do sistema de gestão hospitalar

-- Cria o banco de dados (se ainda não existir)
CREATE DATABASE IF NOT EXISTS hospital_db
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;

-- Seleciona o banco
USE hospital_db;

-- Remove as tabelas se já existirem
DROP TABLE IF EXISTS ATENDIMENTO;
DROP TABLE IF EXISTS MEDICO;
DROP TABLE IF EXISTS ESPECIALIDADE;
DROP TABLE IF EXISTS PACIENTE;

-- Tabela PACIENTE
CREATE TABLE PACIENTE (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(20)
) ENGINE = InnoDB;

-- Tabela ESPECIALIDADE
CREATE TABLE ESPECIALIDADE (
    id_especialidade INT AUTO_INCREMENT PRIMARY KEY,
    nome_especialidade VARCHAR(120) NOT NULL
) ENGINE = InnoDB;

-- Tabela MÉDICO
CREATE TABLE MEDICO (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    crm VARCHAR(20) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    id_especialidade INT NOT NULL,
    CONSTRAINT fk_medico_especialidade
      FOREIGN KEY (id_especialidade)
      REFERENCES ESPECIALIDADE (id_especialidade)
      ON UPDATE CASCADE
      ON DELETE RESTRICT
) ENGINE = InnoDB;

-- Tabela ATENDIMENTO
CREATE TABLE ATENDIMENTO (
    id_atendimento INT AUTO_INCREMENT PRIMARY KEY,
    data_atendimento DATETIME NOT NULL,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    diagnostico VARCHAR(255),
    prescricao VARCHAR(255),
    CONSTRAINT fk_atendimento_paciente
      FOREIGN KEY (id_paciente)
      REFERENCES PACIENTE (id_paciente)
      ON UPDATE CASCADE
      ON DELETE RESTRICT,
    CONSTRAINT fk_atendimento_medico
      FOREIGN KEY (id_medico)
      REFERENCES MEDICO (id_medico)
      ON UPDATE CASCADE
      ON DELETE RESTRICT
) ENGINE = InnoDB;
