-- Escreva uma query que retorne as músicas que possuem no máximo 4 minutos de duração. Ordene o resultado pela duração da música em ordem crescente
SELECT s.title AS 'Título', s.duration_in_seconds AS 'Duração'
FROM songs s
WHERE
    s.duration_in_seconds <= 240
ORDER BY s.duration_in_seconds ASC;