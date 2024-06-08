-- Escreva uma query que retorne o nome e data de nascimento apenas das pessoas usuárias ativas, que nasceram a partir do ano 1990
SELECT full_name AS 'Nome completo', birthday AS 'Data de nascimento' FROM users
  WHERE YEAR(birthday) >= 1990 AND active = 1;