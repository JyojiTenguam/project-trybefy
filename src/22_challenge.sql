-- Escreva uma query que retorne o nome das pessoas artistas e a quantidade de músicas feitas por ela, mas exiba apenas, as três primeiras pessoas com mais músicas cadastradas. Ordene o resultado pelas pessoas que mais tem musicas cadastradas e em caso de empate, ordene pelo nome da pessoa, em ordem alfabética.
SELECT a.name AS 'Artista', COUNT(s.id) AS 'Quantidade de músicas'
FROM artists a
    JOIN albums al ON a.id = al.artist_id
    JOIN songs s ON al.id = s.album_id
GROUP BY
    a.name
ORDER BY COUNT(s.id) DESC, a.name ASC
LIMIT 3;