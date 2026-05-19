-- RELATÓRIO 1
SELECT 
    c.nome,
    COUNT(*) AS total_sessoes
FROM clientes c
JOIN sessoes s 
    ON c.id_cliente = s.id_cliente
GROUP BY c.nome
HAVING COUNT(*) > 1
ORDER BY total_sessoes DESC
LIMIT 5;

-- RELATÓRIO 2
SELECT 
    c.nome,
    c.email
FROM clientes c
LEFT JOIN sessoes s
    ON c.id_cliente = s.id_cliente
WHERE s.id_cliente IS NULL;
-- RELATÓRIO 1
-- Top 5 clientes por faturamento

SELECT 
    c.nome,
    SUM(s.valor_total) AS faturamento_total,
    COUNT(s.id) AS total_sessoes
FROM clientes c
JOIN sessoes s 
    ON c.id = s.id_cliente
GROUP BY c.id, c.nome
HAVING COUNT(s.id) > 1
ORDER BY faturamento_total DESC
LIMIT 5;


-- RELATÓRIO 2
-- Clientes sem sessão

SELECT 
    c.nome,
    c.email,
    c.data_cadastro
FROM clientes c
LEFT JOIN sessoes s
    ON c.id = s.id_cliente
WHERE s.id IS NULL;
