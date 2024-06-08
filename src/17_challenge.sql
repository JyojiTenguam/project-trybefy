-- Escreva uma query que retorne os títulos das músicas do álbum Thriller. Ordene o resultado pelo título em ordem alfabética

SELECT s.title AS 'Título'
FROM songs s
    JOIN albums a ON s.album_id = a.id
WHERE
    a.title = 'Thriller'
ORDER BY s.title ASC;
