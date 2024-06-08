-- Escreva queries para remover o plano trimestral
UPDATE users
  SET plan_id = 2 WHERE plan_id = 3;

DELETE FROM plans WHERE id = 3;