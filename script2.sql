USE loja_db;
#Query 1
INSERT INTO Cliente (nome, endereco, telefone, email)
VALUES ('Richard Carlos', 'Rua Fausto Pinheiro, 112', '992345678', 'richard.carlos@gmail.com');

#Query 2
INSERT INTO Pedidos (cliente_id, produto_id, quantidade, data_pedido)
VALUES (1, 2, 3, '2023-06-08');

#Query 3
DELETE FROM Pedidos
WHERE cliente_id = 1;

#Query 4
UPDATE Cliente
SET nome = 'Maria Oliveira'
WHERE nome = 'Maria Souza';

#Query 5
SELECT *
FROM Cliente
WHERE nome = 'Maria Oliveira';

#Query 6
DELETE FROM Cliente
WHERE nome = 'Richard Carlos';

#Query 7
select * from produto
where preco = 4;

#Query 8
UPDATE produto
SET   preco = preco * 2
WHERE preco = 4;

#Query 9
select * from produto
where preco = 8;

#Query 10
UPDATE produto
SET   preco = preco / 2
WHERE preco = 8;

