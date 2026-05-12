-- Script DDL: Criação das Tabelas e Constraints
CREATE DATABASE IF NOT EXISTS lan_house_gestao;
USE lan_house_gestao;

CREATE TABLE computadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    especificacoes TEXT,
    status VARCHAR(10) DEFAULT 'livre',
    preco_hora DECIMAL(6,2) NOT NULL,
    CHECK (preco_hora > 0),
    CHECK (status IN ('livre', 'ocupado', 'manutencao'))
);

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20),
    data_cadastro DATETIME DEFAULT NOW()
);

CREATE TABLE sessoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_computador INT NOT NULL,
    inicio DATETIME NOT NULL DEFAULT NOW(),
    fim DATETIME,
    status VARCHAR(10) NOT NULL DEFAULT 'aberta',
    valor_total DECIMAL(8,2),
    CHECK (status IN ('aberta', 'encerrada')),
    CONSTRAINT fk_ses_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id) ON DELETE RESTRICT,
    CONSTRAINT fk_ses_comp FOREIGN KEY (id_computador) REFERENCES computadores(id) ON DELETE RESTRICT,
    CONSTRAINT uq_sessao_ativa UNIQUE (id_computador, status)
);

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco DECIMAL(8,2) NOT NULL CHECK (preco > 0),
    estoque INT DEFAULT 0,
    estoque_minimo INT DEFAULT 5
);

CREATE TABLE consumo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_sessao INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL DEFAULT 1 CHECK (quantidade > 0),
    subtotal DECIMAL(8,2) NOT NULL,
    CONSTRAINT fk_con_sessao FOREIGN KEY (id_sessao) REFERENCES sessoes(id) ON DELETE CASCADE,
    CONSTRAINT fk_con_produto FOREIGN KEY (id_produto) REFERENCES produtos(id) ON DELETE RESTRICT
);

CREATE TABLE torneios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_torneio VARCHAR(100) NOT NULL,
    data_evento DATETIME,
    premio DECIMAL(10,2)
);

CREATE TABLE inscricoes (
    id_cliente INT NOT NULL,
    id_torneio INT NOT NULL,
    data_inscricao DATETIME DEFAULT NOW(),
    PRIMARY KEY (id_cliente, id_torneio),
    CONSTRAINT fk_ins_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    CONSTRAINT fk_ins_torneio FOREIGN KEY (id_torneio) REFERENCES torneios(id)
);

CREATE TABLE audit_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tabela_afetada VARCHAR(50),
    acao VARCHAR(20),
    data_hora DATETIME DEFAULT NOW()
);