USE loja_acessorios;
INSERT INTO Cliente (nome, endereco, telefone, email) VALUES
  ('João Silva', 'Rua dos Girassóis, 123', '9123456789', 'joao.silva@gmail.com'),
  ('Maria Souza', 'Avenida das Palmeiras, 456', '9987654321', 'maria.souza@gmail.com'),
  ('Carlos Santos', 'Rua Paulino Pinheiros, 789', '9456123789', 'carlos.santos@gmail.com'),
  ('Ana Oliveira', 'Avenida das Acácias, 987', '9321987654', 'ana.oliveira@gmail.com'),
  ('Pedro Lima', 'Rua Risoleta Gil, 654', '9789123456', 'pedro.lima@gmail.com'),
  
  ('Sandra Ferreira', 'Avenida das Rosas, 321', '9654987321', 'sandra.ferreira@gmail.com'),
  ('José Pereira', 'Rua Bastos Cravel, 654', '9873216549', 'jose.pereira@gmail.com'),
  ('Lúcia Costa', 'Avenida Filomena Assis, 789', '9321654987', 'lucia.costa@gmail.com'),
  ('Rafael Santos', 'Rua das Tulipas, 456', '9654321987', 'rafael.santos@gmail.com'),
  ('Fernanda Lima', 'Avenida Santos Ateneu, 123', '9321789654', 'fernanda.lima@gmail.com'),
 
  ('Mariana Oliveira', 'Rua São Paolo, 987', '9789654321', 'mariana.oliveira@gmail.com'),
  ('Daniel Almeida', 'Avenida dos Jardins, 654', '9321456987', 'daniel.almeida@gmail.com'),
  ('Cristina Costa', 'Rua das Hortênsias, 321', '9654789123', 'cristina.costa@gmail.com'),
  ('Ricardo Santos', 'Avenida Duque Farias, 654', '9871234569', 'ricardo.santos@gmail.com'),
  ('Laura Pereira', 'Rua Roseilde Acaz, 789', '9456789321', 'laura.pereira@gmail.com'),

  ('Fábio Souza', 'Avenida Paulo Bastos, 456', '9789321654', 'fabio.souza@gmail.com'),
  ('Isabela Lima', 'Rua das Bromélias, 789', '9654321789', 'isabela.lima@gmail.com'),
  ('Gustavo Oliveira', 'Avenida Lírio Campal, 321', '9321654789', 'gustavo.oliveira@gmail.com'),
  ('Carolina Silva', 'Rua Bastos Cravel, 987', '9654987123', 'carolina.silva@gmail.com'),
  ('Henrique Costa', 'Avenida Araújo de Castro, 654', '9876543219', 'henrique.costa@gmail.com'),

  ('Natália Santos', 'Rua Osório Batista, 321', '321987654', 'natalia.santos@gmail.com'),
  ('Paulo Oliveira', 'Avenida Vieira Sales, 654', '654321987', 'paulo.oliveira@gmail.com'),
  ('Mariana Lima', 'Rua Osório Batista, 789', '987321654', 'mariana.lima@gmail.com'),
  ('Roberto Almeida', 'Avenida Lírio Campal, 321', '921654987', 'roberto.almeida@gmail.com'),
('Aline Castro', 'Avenida Lírio Campal, 182', '951658987', 'aline.castro@gmail.com');
 
 INSERT INTO Setor (nome) VALUES
('cetim'),
('bijuterias'),
('folheados'),
('Ecobags');
select * from Setor;
 
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

select * from Produto;

INSERT INTO Estoque (produto_id, quantidade)
SELECT id,
       CASE
          WHEN setor_id = 1 THEN 80
          WHEN setor_id = 2 THEN 20
          WHEN setor_id = 3 THEN 40
          ELSE 30 -- Valor padrão caso não haja uma correspondência específica
       END
FROM Produto;

select * from Estoque;

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



