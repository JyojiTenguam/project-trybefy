-- Escreva uma query que retorne o nome da pessoa artista com mais seguidores.
SELECT a.name AS 'Artista'
FROM artists a
    JOIN artists_followers ON a.id = artists_followers.artist_id
GROUP BY
    a.name
ORDER BY COUNT(artists_followers.user_id) DESC
LIMIT 1;