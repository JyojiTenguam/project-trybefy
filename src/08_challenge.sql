-- Escreva uma query que retorne o nome, e-mail e plano das pessoas usuárias. Ordene o resultado pelo nome da pessoa em ordem alfabética
SELECT u.full_name AS 'Nome completo', email AS 'E-mail', p.name AS 'Plano' 
  FROM users u
  INNER JOIN plans p ON u.plan_id = p.id
  ORDER BY u.full_name ASC;