

/***
consulta para um relatório de todas as vendas pagas em dinheiro. 
Necessários para o relatório data da venda, valor total; produtos vendidos, quantidade e valor unitário; nome do cliente, cpf e telefone.
Ordena-se pela data de venda, as mais recentes primeiro.
**/
explain SELECT * FROM venda v, item_venda iv, produto p, cliente c, funcionario f
WHERE v.id = iv.venda_id AND c.id = v.cliente_id AND p.id = iv.produto_id AND f.id = v.funcionario_id and tipo_pagamento = 'D';


-- passo1
 explain SELECT * 
FROM produto p, item_venda iv, venda v 
WHERE p.id = iv.produto_id AND iv.venda_id = v.id;

-- passo2
explain SELECT p.id AS produto_id, p.nome AS produto_nome, iv.quantidade, v.id AS venda_id, v.data
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON iv.venda_id = v.id;

-- passo3
-- Criação de índice na tabela produto
CREATE INDEX idx_produto_id ON produto(id);

-- Criação de índice composto na tabela item_venda
CREATE INDEX idx_item_venda_produto_id_venda_id ON item_venda(produto_id, venda_id);

-- Criação de índice na tabela venda
CREATE INDEX idx_venda_id ON venda(id);

-- passo3
-- View para consulta otimizada com JOINs explícitos e seleção de colunas
CREATE VIEW vw_relatorio_vendas AS
SELECT p.id AS produto_id, p.nome AS produto_nome, iv.quantidade, v.id AS venda_id, v.data
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON iv.venda_id = v.id;

-- Script para criação de índices
CREATE INDEX idx_produto_id ON produto(id);
CREATE INDEX idx_item_venda_produto_id_venda_id ON item_venda(produto_id, venda_id);
CREATE INDEX idx_venda_id ON venda(id);


-- Script para criação da view
CREATE VIEW vw_relatorio_vendas AS
SELECT p.id AS produto_id, p.nome AS produto_nome, iv.quantidade, v.id AS venda_id, v.data
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON iv.venda_id = v.id;





/***
consulta para encontrar todas as vendas de produtos de um dado fabricante
Mostrar dados do produto, quantidade vendida, data da venda.
Ordena-se pelo nome do produto.
***/
 explain SELECT * 
FROM produto p, item_venda iv, venda v
WHERE p.id = iv.produto_id AND v.id = iv.venda_id AND p.fabricante like '%lar%';



SELECT p.id AS produto_id, p.nome AS produto_nome, p.fabricante,
       iv.quantidade, iv.valor_unitario,
       v.id AS venda_id, v.data
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
WHERE p.fabricante LIKE '%lar%';



-- Criação de índices
CREATE INDEX idx_produto_fabricante ON produto (fabricante);
CREATE INDEX idx_item_venda_produto_id ON item_venda (produto_id);
CREATE INDEX idx_venda_id ON venda (id);


EXPLAIN SELECT p.id AS produto_id, p.nome AS produto_nome, p.fabricante,
              iv.quantidade, iv.valor_unitario,
              v.id AS venda_id, v.data
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
WHERE p.fabricante LIKE '%lar%';

-- Criação da view
CREATE VIEW vw_produtos_vendidos_com_fabricante_lar AS
SELECT p.id AS produto_id, p.nome AS produto_nome, p.fabricante,
       iv.quantidade, iv.valor_unitario,
       v.id AS venda_id, v.data
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
WHERE p.fabricante LIKE '%lar%';

-- Script de otimização da consulta
-- Criação de índices
CREATE INDEX idx_produto_fabricante ON produto (fabricante);
CREATE INDEX idx_item_venda_produto_id ON item_venda (produto_id);
CREATE INDEX idx_venda_id ON venda (id);

-- Consulta otimizada
-- SELECT com JOIN explícito e colunas especificadas
SELECT p.id AS produto_id, p.nome AS produto_nome, p.fabricante,
       iv.quantidade, iv.valor_unitario,
       v.id AS venda_id, v.data
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
WHERE p.fabricante LIKE '%lar%';

-- Script de otimização da consulta
-- Criação de índices
CREATE INDEX idx_produto_fabricante ON produto (fabricante);
CREATE INDEX idx_item_venda_produto_id ON item_venda (produto_id);
CREATE INDEX idx_venda_id ON venda (id);

-- Consulta otimizada
-- SELECT com JOIN explícito e colunas especificadas
SELECT p.id AS produto_id, p.nome AS produto_nome, p.fabricante,
       iv.quantidade, iv.valor_unitario,
       v.id AS venda_id, v.data
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
WHERE p.fabricante LIKE '%lar%';

-- Criação da view
CREATE VIEW vw_produto_venda_com_fabricante_lar AS
SELECT p.id AS produto_id, p.nome AS produto_nome, p.fabricante,
       iv.quantidade, iv.valor_unitario,
       v.id AS venda_id, v.data
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
WHERE p.fabricante LIKE '%lar%';






 
/***
Relatório de vendas de produto por cliente.
Mostrar dados do cliente, dados do produto e valor e quantidade totais de venda ao cliente de cada produto.
*/
explain SELECT SUM(iv.subtotal), SUM(iv.quantidade)
FROM produto p, item_venda iv, venda v, cliente c
WHERE p.id = iv.produto_id AND v.id = iv.venda_id AND c.id = v.cliente_id /*f.id = v.funcionario_id*/
GROUP BY c.nome, p.nome;



-- Consulta otimizada
SELECT SUM(iv.subtotal) AS total_subtotal, SUM(iv.quantidade) AS total_quantidade
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
JOIN cliente c ON c.id = v.cliente_id
-- LEFT JOIN funcionario f ON f.id = v.funcionario_id -- Se necessário, ajustar o JOIN com funcionario
GROUP BY c.nome, p.nome;



-- Criação de índices
CREATE INDEX idx_produto_id ON produto (id);
CREATE INDEX idx_item_venda_produto_id ON item_venda (produto_id);
CREATE INDEX idx_venda_id ON venda (id);
CREATE INDEX idx_cliente_id ON cliente (id);



EXPLAIN SELECT SUM(iv.subtotal) AS total_subtotal, SUM(iv.quantidade) AS total_quantidade
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
JOIN cliente c ON c.id = v.cliente_id
-- LEFT JOIN funcionario f ON f.id = v.funcionario_id -- Se necessário, ajustar o JOIN com funcionario
GROUP BY c.nome, p.nome;





-- Script de otimização da consulta
-- Criação de índices
CREATE INDEX idx_produto_id ON produto (id);
CREATE INDEX idx_item_venda_produto_id ON item_venda (produto_id);
CREATE INDEX idx_venda_id ON venda (id);
CREATE INDEX idx_cliente_id ON cliente (id);
-- CREATE INDEX idx_funcionario_id ON funcionario (id); -- Se necessário criar índice para funcionario

-- Consulta otimizada
-- SELECT com JOIN explícito e colunas especificadas
SELECT SUM(iv.subtotal) AS total_subtotal, SUM(iv.quantidade) AS total_quantidade
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
JOIN cliente c ON c.id = v.cliente_id
-- LEFT JOIN funcionario f ON f.id = v.funcionario_id -- Se necessário, ajustar o JOIN com funcionario
GROUP BY c.nome, p.nome;

-- Criação da view
CREATE VIEW vw_total_vendas_por_cliente_produto AS
SELECT SUM(iv.subtotal) AS total_subtotal, SUM(iv.quantidade) AS total_quantidade
FROM produto p
JOIN item_venda iv ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
JOIN cliente c ON c.id = v.cliente_id
-- LEFT JOIN funcionario f ON f.id = v.funcionario_id -- Se necessário, ajustar o JOIN com funcionario
GROUP BY c.nome, p.nome;