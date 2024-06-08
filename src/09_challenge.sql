-- Escreva uma query que retorne os planos com seus respectivos totais de pessoas vinculadas. Ordene o resultado pelo plano em ordem alfabética
SELECT p.name AS 'Plano', COUNT(u.id) AS 'Quantidade de usuários'
FROM users u
INNER JOIN plans p ON u.plan_id = p.id
GROUP BY p.name
ORDER BY p.name ASC;