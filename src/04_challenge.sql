-- Escreva uma query que retorne o nome e email apenas das pessoas usuárias ativas
SELECT full_name AS 'Nome completo', email AS 'E-mail' FROM users WHERE active = 1;
