-- Escreva uma query que retorne o nome dos álbuns e a quantidade de músicas reproduzidas daquele álbum, mas exiba apenas os cinco primeiros resultados. Ordene o resultado pela maior quantidade de reprodução e em caso de empate, ordene pelo nome do álbum, em ordem alfabética.
SELECT a.title AS 'Álbum', COUNT(history_play_songs.song_id) AS 'Quantidade de músicas reproduzidas'
FROM
    albums a
    JOIN songs s ON a.id = s.album_id
    JOIN history_play_songs ON s.id = history_play_songs.song_id
GROUP BY
    a.id
ORDER BY COUNT(history_play_songs.song_id) DESC, a.title ASC
LIMIT 5;