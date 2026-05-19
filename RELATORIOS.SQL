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
