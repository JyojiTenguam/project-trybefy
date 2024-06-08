-- Escreva uma query que retorne o nome das pessoas artistas que possuem pelo menos três álbuns cadastrados. Ordene o resultado pelo nome da pessoa em ordem alfabética

SELECT a.name AS 'Artista'
FROM artists a
    JOIN albums ON a.id = albums.artist_id
GROUP BY
    a.name
HAVING
    COUNT(albums.id) >= 3
ORDER BY a.name ASC;