-- Escreva uma query que retorne o nome dos álbuns e a soma da duração de todas as suas músicas em segundos. Ordene o resultado pela soma das durações, da maior para a menor
SELECT a.title AS 'Álbum', SUM(s.duration_in_seconds) AS 'Duração'
FROM albums a
    JOIN songs s ON a.id = s.album_id
GROUP BY
    a.title
ORDER BY SUM(s.duration_in_seconds) DESC;