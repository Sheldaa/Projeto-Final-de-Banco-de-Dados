CREATE DATABASE loja_acessorios;

USE loja_acessorios;

-- Tabela Cliente
CREATE TABLE Cliente (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  endereco VARCHAR(200),
  telefone VARCHAR(20),
  email VARCHAR(100)
);

-- Tabela Produto
CREATE TABLE Produto (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  descricao TEXT,
  preco DECIMAL(10, 2) NOT NULL,
  setor_id INT,
  FOREIGN KEY (setor_id) REFERENCES Setor(id)
);

-- Tabela Setor
CREATE TABLE Setor (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL
);

-- Tabela Estoque
CREATE TABLE Estoque (
  id INT PRIMARY KEY AUTO_INCREMENT,
  produto_id INT,
  quantidade INT,
  FOREIGN KEY (produto_id) REFERENCES Produto(id)
);

-- Tabela Fornecedor
CREATE TABLE Fornecedor (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  endereco VARCHAR(200),
  telefone VARCHAR(20),
  email VARCHAR(100),
  produto_id INT,
  FOREIGN KEY (produto_id) REFERENCES Produto(id)
);


-- Tabela Quantidade de vendas por mês
CREATE TABLE VendasPorMes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  mes INT NOT NULL,
  ano INT NOT NULL,
  quantidade INT,
  produto_id INT,
  FOREIGN KEY (produto_id) REFERENCES Produto(id)
);

select * from VendasPorMes;