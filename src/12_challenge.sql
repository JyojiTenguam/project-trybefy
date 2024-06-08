-- Escreva uma query que retorne o nome das pessoas artistas e a respectiva quantidade de álbuns que cada uma possui. Ordene o resultado pelas pessoas que possuem mais álbuns e em caso de empate, ordene pelo nome da pessoa artista, em ordem alfabética.
SELECT artists.name AS 'Artista', COUNT(albums.id) AS 'Quantidade de álbuns'
FROM artists
    JOIN albums ON artists.id = albums.artist_id
GROUP BY
    artists.name
ORDER BY COUNT(albums.id) DESC, artists.name ASC;