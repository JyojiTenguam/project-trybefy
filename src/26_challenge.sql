-- Escreva uma query que retorne o nome da pessoa artista e a quantidade de músicas reproduzidas da pessoa, mas apenas artistas que possuem mais do que 10 músicas reproduzidas. Ordene o resultado pelo nome da pessoa em ordem alfabética
SELECT a.name AS 'Artista', COUNT(history_play_songs.song_id) AS 'Quantidade de músicas reproduzidas'
From
    artists a
    JOIN albums al ON a.id = al.artist_id
    JOIN songs s ON al.id = s.album_id
    JOIN history_play_songs ON s.id = history_play_songs.song_id
GROUP BY
    a.id
HAVING
    COUNT(history_play_songs.song_id) > 10
ORDER BY a.name ASC;