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
SELECT COUNT(*) AS quantidade_pedidos
FROM Pedidos
WHERE produto_id IN (SELECT id FROM Produto WHERE setor_id = (SELECT id FROM Setor WHERE nome = 'Folheados'));

#Query 5
SELECT nome, id
FROM Fornecedor;

#Query 6
SELECT ALL produto_id
FROM Pedidos;

#Query 7
SELECT DISTINCT produto_id
FROM Pedidos;

#Query 8
SELECT c.id, c.nome, COUNT(p.id) AS total_pedidos
FROM Cliente c
JOIN Pedidos p ON c.id = p.cliente_id
JOIN Produto pr ON p.produto_id = pr.id
JOIN Setor s ON pr.setor_id = s.id
WHERE s.nome = 'Cetim'
GROUP BY c.id, c.nome
ORDER BY total_pedidos DESC
LIMIT 1;


