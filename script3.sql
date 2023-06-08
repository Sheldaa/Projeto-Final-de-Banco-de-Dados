USE loja_db;

#Query 1
SELECT COUNT(*) AS total_clientes FROM cliente;

#Query 2
SELECT COUNT(*) AS total_pedidos FROM Pedidos;

#Query 3
SELECT c.id, c.nome, COUNT(p.id) AS total_pedidos, SUM(p.quantidade) AS total_produtos
FROM Cliente c
JOIN Pedidos p ON c.id = p.cliente_id
GROUP BY c.id, c.nome
ORDER BY total_pedidos DESC
LIMIT 1;

#Query 4
SELECT c.id, c.nome, COUNT(p.id) AS total_pedidos, SUM(p.quantidade) AS total_produtos, SUM(p.quantidade * pr.preco) AS total_gasto
FROM Cliente c
JOIN Pedidos p ON c.id = p.cliente_id
JOIN Produto pr ON p.produto_id = pr.id
GROUP BY c.id, c.nome
ORDER BY total_pedidos DESC
LIMIT 1;

#Query 5
SELECT c.id, c.nome, COUNT(p.id) AS total_pedidos, SUM(p.quantidade) AS total_produtos
FROM Cliente c
JOIN Pedidos p ON c.id = p.cliente_id
GROUP BY c.id, c.nome
ORDER BY total_pedidos DESC
LIMIT 1 OFFSET 1;

#Query 6
SELECT p.nome AS nome_produto, COUNT(*) AS total_vendas
FROM Pedidos ped
JOIN Produto p ON ped.produto_id = p.id
GROUP BY p.nome
ORDER BY total_vendas DESC
LIMIT 1;

#Query 7
SELECT p.nome AS nome_produto, COUNT(*) AS total_vendas
FROM Pedidos ped
JOIN Produto p ON ped.produto_id = p.id
GROUP BY p.nome
ORDER BY total_vendas ASC
LIMIT 1;

#Query 8
SELECT nome, preco
FROM Produto
WHERE preco = (SELECT MAX(preco) FROM Produto);

#Query 9
SELECT nome, preco
FROM Produto
WHERE preco = (SELECT MIN(preco) FROM Produto);

#Query 10
SELECT p.nome AS produto, SUM(vm.quantidade) AS total_vendido
FROM VendasPorMes vm
JOIN Produto p ON vm.produto_id = p.id
WHERE vm.mes = 1
GROUP BY p.nome
ORDER BY total_vendido DESC
LIMIT 1;

#Query 11
SELECT mes, SUM(quantidade) AS total_vendido
FROM VendasPorMes
GROUP BY mes
ORDER BY total_vendido DESC
LIMIT 1;

#Query 12
SELECT vp.mes, SUM(vp.quantidade * pr.preco) AS total_apurado
FROM VendasPorMes vp
JOIN Produto pr ON vp.produto_id = pr.id
GROUP BY vp.mes
ORDER BY total_apurado DESC
LIMIT 1;






