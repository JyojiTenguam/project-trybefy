-- Escreva uma query que retorne o nome e a duração da música, juntamente com o título do álbum, mas apenas das músicas que possuem entre 5 e 8 minutos de duração. Ordene o resultado pela duração da música em ordem crescente
SELECT songs.title AS 'Título', songs.duration_in_seconds AS 'Duração', albums.title AS 'Álbum'
FROM songs
    JOIN albums ON songs.album_id = albums.id
WHERE
    songs.duration_in_seconds BETWEEN 300 AND 480
ORDER BY songs.duration_in_seconds ASC;