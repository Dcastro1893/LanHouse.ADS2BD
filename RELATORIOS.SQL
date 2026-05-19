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
