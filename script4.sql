USE loja_db;

#Query 1
CREATE VIEW ClienteMaisPedidosBijuterias AS
SELECT c.id, c.nome, COUNT(p.id) AS total_pedidos
FROM Cliente c
JOIN Pedidos p ON c.id = p.cliente_id
JOIN Produto pr ON p.produto_id = pr.id
JOIN Setor s ON pr.setor_id = s.id
WHERE s.nome = 'Bijuterias'
GROUP BY c.id, c.nome
ORDER BY total_pedidos DESC
LIMIT 1;

#Query 2
SELECT * FROM ClienteMaisPedidosBijuterias;

#Query 3
CREATE VIEW QuantidadePedidosCliente AS
SELECT c.id AS cliente_id, c.nome AS cliente_nome, COUNT(p.id) AS quantidade_pedidos
FROM Cliente c
LEFT JOIN Pedidos p ON c.id = p.cliente_id
GROUP BY c.id, c.nome;

#Query 4
SELECT * FROM QuantidadePedidosCliente;
