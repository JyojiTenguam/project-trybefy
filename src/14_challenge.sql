-- Escreva uma query que retorne o nome das pessoas artistas e seus respectivos álbuns. Ordene o resultado pelo nome da pessoa em ordem alfabética
SELECT a.name AS 'Artista', GROUP_CONCAT(albums.title SEPARATOR ',') AS 'Álbuns'
FROM artists a
    JOIN albums ON a.id = albums.artist_id
GROUP BY
    a.name
ORDER BY a.name ASC;