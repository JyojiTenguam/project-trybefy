-- Escreva uma query que retorne o nome da pessoa artista, seus álbuns e suas respectivas músicas, mas apenas de artistas que não são The Beatles. Ordene o resultado pelo nome da pessoa artista, em caso de empate, ordene pelo título do álbum e se o empate persistir, ordene pelo título da música,todos estes casos em ordem alfabética.
SELECT a.name AS 'Artista', al.title AS 'Álbum', s.title AS 'Música'
FROM artists a
    JOIN albums al ON a.id = al.artist_id
    JOIN songs s ON al.id = s.album_id
WHERE
    a.name <> 'The Beatles'
ORDER BY a.name, al.title, s.title;