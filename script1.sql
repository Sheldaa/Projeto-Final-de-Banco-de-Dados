USE loja_db;
#Query 1
SELECT endereco, telefone
FROM Cliente
WHERE nome = 'Fábio Souza';

#Query 1
SELECT P.nome AS NomeProduto, S.nome AS NomeSetor
FROM Produto AS P
JOIN Setor AS S ON P.setor_id = S.id;

#Query 3
SELECT P.id AS IdProduto, S.id AS IdSetor, P.nome AS NomeProduto, S.nome AS NomeSetor
FROM Produto AS P
JOIN Setor AS S ON P.setor_id = S.id
WHERE S.nome = 'Folheados';

#Query 4
SELECT nome, id
FROM Fornecedor;

#Query 5
SELECT ALL produto_id
FROM Pedidos;

#Query 6
SELECT DISTINCT produto_id
FROM Pedidos;


