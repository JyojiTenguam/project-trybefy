-- Escreva uma query que retorne o nome e ano de lançamento do álbum, juntamente com o nome da pessoa artista, mas apenas para álbuns que possuam a palavra "you". Ordene o resultado pelo ano de lançamento de forma crescente
SELECT albums.title AS 'Album', albums.release_year AS 'Ano de lançamento', artists.name AS 'Artista'
FROM albums
    JOIN artists ON albums.artist_id = artists.id
WHERE
    albums.title LIKE '%you%'
ORDER BY albums.release_year ASC;