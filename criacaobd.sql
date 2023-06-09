CREATE DATABASE loja_db;

USE loja_db;

-- Tabela Cliente
CREATE TABLE Cliente (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  endereco VARCHAR(200),
  telefone VARCHAR(20),
  email VARCHAR(100)
);

-- Tabela Setor
CREATE TABLE Setor (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL
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

-- Tabela Pedidos
CREATE TABLE Pedidos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT,
  produto_id INT,
  quantidade INT,
  data_pedido DATE,
  FOREIGN KEY (cliente_id) REFERENCES Cliente(id),
  FOREIGN KEY (produto_id) REFERENCES Produto(id)
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

INSERT INTO Cliente (nome, endereco, telefone, email) VALUES
  ('João Silva', 'Rua dos Girassóis, 123', '912345678', 'joao.silva@gmail.com'),
  ('Maria Souza', 'Avenida das Palmeiras, 456', '998765432', 'maria.souza@gmail.com'),
  ('Carlos Santos', 'Rua Paulino Pinheiros, 789', '945612378', 'carlos.santos@gmail.com'),
  ('Ana Oliveira', 'Avenida das Acácias, 987', '932198765', 'ana.oliveira@gmail.com'),
  ('Pedro Lima', 'Rua Risoleta Gil, 654', '978912345', 'pedro.lima@gmail.com'),
  
  ('Sandra Ferreira', 'Avenida das Rosas, 321', '965498732', 'sandra.ferreira@gmail.com'),
  ('José Pereira', 'Rua Bastos Cravel, 654', '987321654', 'jose.pereira@gmail.com'),
  ('Lúcia Costa', 'Avenida Filomena Assis, 789', '932165498', 'lucia.costa@gmail.com'),
  ('Rafael Santos', 'Rua das Tulipas, 456', '965432197', 'rafael.santos@gmail.com'),
  ('Fernanda Lima', 'Avenida Santos Ateneu, 123', '932178965', 'fernanda.lima@gmail.com'),
 
  ('Mariana Oliveira', 'Rua São Paolo, 987', '978965431', 'mariana.oliveira@gmail.com'),
  ('Daniel Almeida', 'Avenida dos Jardins, 654', '932145698', 'daniel.almeida@gmail.com'),
  ('Cristina Costa', 'Rua das Hortênsias, 321', '965478912', 'cristina.costa@gmail.com'),
  ('Ricardo Santos', 'Avenida Duque Farias, 654', '987123459', 'ricardo.santos@gmail.com'),
  ('Laura Pereira', 'Rua Roseilde Acaz, 789', '945678931', 'laura.pereira@gmail.com'),

  ('Fábio Souza', 'Avenida Paulo Bastos, 456', '978932164', 'fabio.souza@gmail.com'),
  ('Isabela Lima', 'Rua das Bromélias, 789', '965432179', 'isabela.lima@gmail.com'),
  ('Gustavo Oliveira', 'Avenida Lírio Campal, 321', '932165489', 'gustavo.oliveira@gmail.com'),
  ('Carolina Silva', 'Rua Bastos Cravel, 987', '965498723', 'carolina.silva@gmail.com'),
  ('Henrique Costa', 'Avenida Araújo de Castro, 654', '987643219', 'henrique.costa@gmail.com'),

  ('Natália Santos', 'Rua Osório Batista, 321', '921987654', 'natalia.santos@gmail.com'),
  ('Paulo Oliveira', 'Avenida Vieira Sales, 654', '954321987', 'paulo.oliveira@gmail.com'),
  ('Mariana Lima', 'Rua Osório Batista, 789', '987321654', 'mariana.lima@gmail.com'),
  ('Roberto Almeida', 'Avenida Lírio Campal, 321', '921654987', 'roberto.almeida@gmail.com'),
('Aline Castro', 'Avenida Lírio Campal, 182', '978836327', 'aline.castro@gmail.com');


INSERT INTO Cliente (nome, endereco, telefone, email) VALUES
  ('Pietra castro', 'Rua dos Girassóis, 1289', '912523439', 'pietra.castro@gmail.com'),
  ('Mariana Souza', 'Avenida das Palmeiras, 406', '998765467', 'mariana.souza@gmail.com'),
  ('Carlos André', 'Rua Paulino Pinheiros, 779', '997867543', 'carlos.andre@gmail.com'),
  ('Anélia Laís', 'Avenida das Acácias, 997', '993456321', 'ane.lais@gmail.com'),
  ('Paloma lima', 'Rua Risoleta Gil, 658', '992356756', 'paloma.lima@gmail.com'),
  
  ('Salete Ferreira', 'Avenida das Rosas, 334', '994567855', 'salete.ferreira@gmail.com'),
  ('Josefa Pereira', 'Rua Bastos Cravel, 121', '997854312', 'josefa.pereira@gmail.com'),
  ('Luana Costa', 'Avenida Filomena Assis, 290', '994557632', 'luana.costa@gmail.com'),
  ('Rafaela Santos', 'Rua das Tulipas, 156', '967865197', 'rafaela.santos@gmail.com'),
  ('Felícia Lima', 'Avenida Santos Ateneu, 183', '932198745', 'felícia.lima@gmail.com'),
 
  ('Alice Oliveira', 'Rua São Paolo, 162', '978125431', 'alice.oliveira@gmail.com'),
  ('Daniela Almeida', 'Avenida dos Jardins, 124', '931145698', 'dani.almeida@gmail.com'),
  ('Cristielen Costa', 'Rua das Hortênsias, 221', '987478912', 'cris.costa@gmail.com'),
  ('Rita Santos', 'Avenida Duque Farias, 614', '900123459', 'rita.santos@gmail.com'),
  ('Larisse Pereira', 'Rua Roseilde Acaz, 129', '945018931', 'lari.pereira@gmail.com'),
  
  ('Paty Castrp', 'Rua dos Girassóis, 129', '912551439', 'paty.castro@gmail.com'),
  ('Marilia Souza', 'Avenida das Palmeiras, 4061', '991265467', 'marilia.souza@gmail.com'),
  ('Carlos alessandro', 'Rua Paulino Pinheiros, 799', '997007543', 'carlos.ale@gmail.com'),
  ('Aymee Bastos', 'Avenida das Acácias, 917', '955456321', 'aymee.b@gmail.com'),
  ('Paloma lima', 'Rua Risoleta Gil, 608', '9923567096', 'paloma.lima@gmail.com'),
  
  ('Samila Ferreira', 'Avenida das Rosas, 301', '922567855', 'samila.ferreira@gmail.com'),
  ('Joselita Pereira', 'Rua Bastos Cravel, 001', '990054312', 'joselita.pereira@gmail.com'),
  ('Luana Carvalho', 'Avenida Filomena Assis, 190', '994002632', 'luana.carv@gmail.com'),
  ('Raissa Santos', 'Rua das Tulipas, 116', '967865197', 'rai.santos@gmail.com'),
  ('Fátima Lima', 'Avenida Santos Ateneu, 122', '930818745', 'fat.lima@gmail.com'),
 
  ('Bárbara Oliveira', 'Rua São Paolo, 162', '978109431', 'barb.oliveira@gmail.com'),
  ('Pâmela Brioso', 'Avenida dos Jardins, 104', '931142598', 'pamela.bri@gmail.com'),
  ('Cláudia Costa', 'Rua das Hortênsias, 201', '982678912', 'claudia.costa@gmail.com'),
  ('Haylee Santos', 'Avenida Duque Farias, 614', '900122559', 'hay.santos@gmail.com'),
  ('Márcia Pereira', 'Rua Roseilde Acaz, 329', '905018931', 'mmarcia.pereira@gmail.com'),
  
  ('Paola', 'Rua das Flores, 123', '912345678', 'paola11@gmail.com'),
  ('Samia', 'Avenida Central, 456', '923456789', 'samia12@gmail.com'),
  ('Alessandra', 'Travessa das Acácias, 987', '934567890', 'alessandra00@gmail.com'),
  ('Beatriz', 'Rua da Liberdade, 789', '945678901', 'beatriz12@gmail.com'),
  ('Bruna', 'Alameda dos Girassóis, 654', '956789012', 'bruna12@gmail.com'),
  ('Thalita', 'Rua dos Coqueiros, 321', '967890123', 'thalita11@gmail.com'),
  ('Abigail', 'Avenida Principal, 567', '978901234', 'abigail12@gmail.com'),
  ('Ariane', 'Rua do Sol, 890', '989012345', 'ariane@gmail.com'),
  ('Adriana', 'Rua São João, 234', '990123456', 'adriana@gmail.com'),
  ('Karina', 'Avenida das Palmeiras, 567', '901234567', 'karina@gmail.com'),
  ('Cátia', 'Rua das Margaridas, 890', '912345678', 'catia@gmail.com'),
  ('Carla', 'Travessa da Esperança, 123', '923456789', 'carla@gmail.com'),
  ('Clarisse', 'Alameda das Oliveiras, 456', '934567890', 'clarisse@gmail.com'),
  ('Paulina', 'Rua da Paz, 789', '945678901', 'paulina@gmail.com'),
  ('Irlene', 'Rua dos Ipês, 987', '956789012', 'irlene@gmail.com'),
  ('Ingrid', 'Avenida Central, 654', '967890123', 'ingrid@gmail.com'),
  ('Ariadna', 'Rua dos Lírios, 321', '978901234', 'ariadna@gmail.com'),
  ('Ellen', 'Alameda dos Cravos, 567', '989012345', 'ellen@gmail.com'),
  ('Gabriele', 'Travessia dos Girassóis, 890', '912345678', 'gabriele@gmail.com'),
  ('Victória', 'Rua Principal Firmino, 234', '901234567', 'victoria@gmail.com'),
  ('Priscila', 'Avenida do Sol, 567', '923456789', 'priscila@gmail.com'),
  ('Bianca', 'Travessa São Pedro, 890', '934567890', 'bianca@gmail.com'),
  ('Késia', 'Rua das Orquídeas, 123', '945678901', 'kesia@gmail.com'),
  ('Nayane', 'Alameda das Rosas, 456', '990123456', 'nayane@gmail.com'),
  ('Délia', 'Rua dos Amores, 789', '945678901', 'delia@gmail.com');
  

 
 INSERT INTO Setor (nome) VALUES
('cetim'),
('bijuterias'),
('folheados'),
('Ecobags');

 
INSERT INTO Produto (nome, descricao, preco, setor_id) VALUES
('Colar concha', 'Colar de concha dourado', 15, 3 ),
('Colar lua','Colar de meia lua dourado', 16, 3 ),
('Colar mar', 'Colar com símbolo de onda prata', 17, 3),
('Colar coração', 'Colar coração preenchido com pedras', 14, 3),
('Colar flores', 'Colar com pedras coloridas', 15, 3),
('Colar borboletas', 'Colar com borboleta rosa', 16, 3),
('Ecobag', 'Ecobag 35x30x20 com estampa da preferência do cliente', 20, 4),
('Mini Ecobag', 'Mini ecobag 30x20x10', 16, 4),
('Bracelete Sereia','Bracelete dourado', 10, 2),
('Bracelete Sol', 'Bracelete prata', 10, 2),
('Bracelete Bichinhos', 'Bracelete dourado', 12, 2),
('Bracelete pérolas', 'Bracelete prata com pérolas', 12, 2),
('Ponto de Luz', 'Colar dourado com pedra única', 20, 3),
('Argola prata', 'argora prata, tamanho 7.5cm de diâmetro', 15, 3),
('Argola dourada', 'argola dourada, tamanho 7.5cm de diâmetro', 15, 3),
('Brinco antialérgico Flor', 'antialérgico com flor dourada', 6, 2),
('Brinco Antialérgico estrela', 'antialérgico com estrela prata', 6, 2),
('Brinco Antialérgico Safira', 'Antialérgico com pedra azul', 6, 2),
('Tapa-Olho', 'feito de cetim, cor da preferência do cliente', 8, 1),
('Touca', 'dupla face, cor da preferência do cliente', 12, 1),
('Scrunchie', 'feita de cetim, cor da preferência do cliente', 4, 1),
('Kit Scrunchies', 'Cinco unidades em cores variadas', 18, 1),
('Robe', 'feito de cetim, tamanhos M, G e GG', 20, 1),
('Modelador de cachos', 'feito de cetim, preenchido com algodão', 18, 1),
('Pulseira Berloque', 'Contém 3 pingentes pratas inclusos', 35, 3),
('Pulseira Pendula', 'Pulseira folheada à ouro', 23, 3),
('Pulseira com nome', 'Pulseira folheada à ouro', 25, 3),
('Pulseira cadeado','contém pingente de cadeado e chave', 15, 3);

select * from Pedidos;

INSERT INTO Estoque (produto_id, quantidade)
SELECT id,
       CASE
          WHEN setor_id = 1 THEN 500
          WHEN setor_id = 2 THEN 500
          WHEN setor_id = 3 THEN 500
          ELSE 250 -- Valor padrão caso não haja uma correspondência específica
       END
FROM Produto;

-- Inserir fornecedores relacionados ao setor de cetim (setor_id = 1)
INSERT INTO Fornecedor (nome, endereco, telefone, email, produto_id)
SELECT 'Casa dos Tecidos', 'Rua Anísio Albuquerque, 211', '997867177', 'casadostecidos@gmail.com', id
FROM Produto
WHERE setor_id = 1
LIMIT 6;


-- Inserir fornecedores relacionados ao setor de bijuterias (setor_id = 2)
INSERT INTO Fornecedor (nome, endereco, telefone, email, produto_id)
SELECT 'La Biju - Atacado', 'Rua Roselita Bastos', '992345675', 'labiju.contato@gmail.com', id
FROM Produto
WHERE setor_id = 2
LIMIT 7;

-- Inserir fornecedores relacionados ao setor de folheados (setor_id = 3)
INSERT INTO Fornecedor (nome, endereco, telefone, email, produto_id)
SELECT 'Village Ouro', 'Avenida Paulo Ferreira, 415', '992345678', 'village.atacado@gmail.com', id
FROM Produto
WHERE setor_id = 3
LIMIT 13;

-- Inserir fornecedores relacionados ao setor de Ecobags (setor_id = 3)
INSERT INTO Fornecedor (nome, endereco, telefone, email, produto_id)
SELECT 'Casa dos Tecidos', 'Rua Anísio Albuquerque, 211', '997867177', 'casadostecidos@gmail.com', id
FROM Produto
WHERE setor_id = 4
LIMIT 2;
select * from Fornecedor;

-- Inserindo valores na tabela de vendas por mês relacionados aos meses de janeiro e fevereiro
INSERT INTO VendasPorMes (mes, ano, quantidade, produto_id)
SELECT 1, 2023, 10, id
FROM Produto
WHERE setor_id = 1;

INSERT INTO VendasPorMes (mes, ano, quantidade, produto_id)
SELECT 1, 2023, 15, id
FROM Produto
WHERE setor_id = 2;
select * from VendasPorMes;

INSERT INTO VendasPorMes (mes, ano, quantidade, produto_id)
SELECT 1, 2023, 32, id
FROM Produto
WHERE setor_id = 3;

INSERT INTO VendasPorMes (mes, ano, quantidade, produto_id)
SELECT 1, 2023, 20, id
FROM Produto
WHERE setor_id = 4;

INSERT INTO VendasPorMes (mes, ano, quantidade, produto_id)
SELECT 2, 2023, 50, id
FROM Produto
WHERE setor_id = 1;

INSERT INTO VendasPorMes (mes, ano, quantidade, produto_id)
SELECT 2, 2023, 20, id
FROM Produto
WHERE setor_id = 2;
select * from VendasPorMes;

INSERT INTO VendasPorMes (mes, ano, quantidade, produto_id)
SELECT 2, 2023, 28, id
FROM Produto
WHERE setor_id = 3;

INSERT INTO VendasPorMes (mes, ano, quantidade, produto_id)
SELECT 2, 2023, 15, id
FROM Produto
WHERE setor_id = 4;


-- Preenchendo a tabela Pedidos
INSERT INTO Pedidos (cliente_id, produto_id, quantidade, data_pedido) VALUES
  -- Pedidos do João Silva
  (1, 1, 2, '2023-06-01'),
  (1, 3, 1, '2023-06-02'),
  
  -- Pedidos da Maria Souza
  (2, 2, 1, '2023-06-01'),
  (2, 5, 3, '2023-06-03'),
  
  -- Pedidos do Carlos Santos
  (3, 4, 1, '2023-06-02'),
  (3, 8, 2, '2023-06-04'),
  
  -- Pedidos da Ana Oliveira
  (4, 6, 1, '2023-06-03'),
  (4, 9, 1, '2023-06-05'),
  
  -- Pedidos do Pedro Lima
  (5, 7, 2, '2023-06-04'),
  (5, 12, 1, '2023-06-06'),
  
  -- Pedidos da Sandra Ferreira
  (6, 10, 1, '2023-06-01'),
  (6, 15, 3, '2023-06-03'),
  
  -- Pedidos do José Pereira
  (7, 11, 2, '2023-06-02'),
  (7, 18, 1, '2023-06-04'),
  
  -- Pedidos da Lúcia Costa
  (8, 14, 1, '2023-06-03'),
  (8, 22, 2, '2023-06-05'),
  
  -- Pedidos do Rafael Santos
  (9, 16, 1, '2023-06-04'),
  (9, 25, 1, '2023-06-06'),
  
  -- Pedidos da Fernanda Lima
  (10, 21, 2, '2023-06-05'),
  (10, 28, 1, '2023-06-07');
  
  INSERT INTO Pedidos (cliente_id, produto_id, quantidade, data_pedido) VALUES
  -- Pedidos da Mariana Oliveira
  (11, 17, 6, '2023-06-02'),
  (11, 23, 7, '2023-06-04'),
  
  -- Pedidos do Daniel Almeida
  (12, 19, 5, '2023-06-03'),
  (12, 26, 4, '2023-06-05'),
  
  -- Pedidos da Cristina Costa
  (13, 13, 7, '2023-06-04'),
  (13, 27, 2, '2023-06-06'),
  
  -- Pedidos do Ricardo Santos
  (14, 15, 5, '2023-06-05'),
  (14, 22, 6, '2023-06-07'),
  
  -- Pedidos da Laura Pereira
  (15, 20, 5, '2023-06-06'),
  (15, 22, 3, '2023-06-08'),
  
  -- Pedidos do Fábio Souza
  (16, 10, 2, '2023-06-02'),
  (16, 16, 3, '2023-06-04'),
  
  -- Pedidos da Isabela Lima
  (17, 12, 2, '2023-06-03'),
  (17, 24, 4, '2023-06-05'),
  
  -- Pedidos do Gustavo Oliveira
  (18, 11, 3, '2023-06-04'),
  (18, 21, 2, '2023-06-06'),
  
  -- Pedidos da Carolina Silva
  (19, 9, 1, '2023-06-05'),
  (19, 28, 1, '2023-06-07'),
  
  -- Pedidos do Henrique Costa
  (20, 8, 2, '2023-06-06'),
  (20, 25, 1, '2023-06-08'),
  
  -- Pedidos da Natália Santos
  (21, 6, 1, '2023-06-03'),
  (21, 14, 3, '2023-06-05'),
  
  -- Pedidos do Paulo Oliveira
  (22, 5, 2, '2023-06-04'),
  (22, 18, 2, '2023-06-06'),
  
  -- Pedidos da Mariana Lima
  (23, 3, 7, '2023-06-05'),
  (23, 22, 2, '2023-06-07'),
  
  -- Pedidos do Roberto Almeida
  (24, 1, 1, '2023-06-06'),
  (24, 7, 1, '2023-06-08'),
  
  -- Pedidos da Aline Castro
  (25, 2, 2, '2023-06-07'),
  (25, 19, 8, '2023-06-09'),
 
  (51, 1, 12, '2023-06-06'),
  (50, 2, 10, '2023-06-07'),
  (31, 3, 7, '2023-06-08'),
  (30, 1, 8, '2023-06-06'),
  (27, 2, 8, '2023-06-07'),
  (45, 3, 11, '2023-06-08'),
  (45, 1, 3, '2023-06-06'),
  (40, 2, 9, '2023-06-07'),
  (40, 3, 8, '2023-06-08'),
  (40, 1, 7, '2023-06-06'),
  (40, 2, 3, '2023-06-07'),
  (40, 3, 7, '2023-06-08'),
  (38, 1, 5, '2023-06-06'),
  (26, 2, 3, '2023-06-07'),
  (21, 3, 1, '2023-06-08'),

  (57, 1, 12, '2023-06-06'),
  (58, 2, 10, '2023-06-07'),
  (60, 3, 7, '2023-06-08'),
  (59, 1, 8, '2023-06-06'),
  (9, 2, 8, '2023-06-07'),
  (62, 3, 11, '2023-06-08'),
  (55, 1, 3, '2023-06-06'),
  (63, 2, 9, '2023-06-07'),
  (63, 3, 8, '2023-06-08'),
  (63, 1, 7, '2023-06-06'),
  (63, 2, 3, '2023-06-07'),
  (63, 3, 7, '2023-06-08'),
  (54, 1, 5, '2023-06-06'),
  (52, 2, 3, '2023-06-07'),
  (52, 3, 1, '2023-06-08'),
  
(75, 21, 3, '2023-06-06'),
(61, 22, 2, '2023-06-07'),
(69, 5, 1, '2023-06-08'),
(70, 7, 4, '2023-06-09'),
(72, 8, 2, '2023-06-10'),
(43, 5, 3, '2023-06-11'),
(45, 28, 1, '2023-06-12'),
(80, 20, 2, '2023-06-13'),
(73, 19, 3, '2023-06-14'),
(76, 17, 2, '2023-06-15'),
(77, 12, 1, '2023-06-16'),
(31, 14, 2, '2023-06-17'),
(58, 11, 3, '2023-06-18'),
(77, 13, 1, '2023-06-19'),
(66, 15, 2, '2023-06-20'),
(67, 7, 1, '2023-06-21'),
(62, 7, 3, '2023-06-22'),
(63, 8, 2, '2023-06-23'),
(76, 10, 1, '2023-06-24'),
(76, 2, 2, '2023-06-25'),
(76, 7, 3, '2023-06-26'),
(76, 6, 1, '2023-06-27');
  
  

  
  


