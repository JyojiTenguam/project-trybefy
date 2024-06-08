-- Escreva uma query que retorne o nome da pessoa artista e o total de pessoas seguidoras que ela possui, mas apenas artistas que possuem menos de 5 seguidores.
SELECT a.name AS 'Artista', COUNT(artists_followers.user_id) AS 'Total de seguidores'
FROM artists a
    JOIN artists_followers ON a.id = artists_followers.artist_id
GROUP BY
    a.name
HAVING
    COUNT(artists_followers.user_id) < 5;