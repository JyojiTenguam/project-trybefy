-- Escreva uma query que retorne o nome das pessoas usuárias e o total das pessoas artistas que ela segue. Ordene o resultado pelo nome das pessoas usuárias, em ordem alfabética.
SELECT u.full_name AS 'Pessoa usuária', COUNT(artists_followers.artist_id) AS 'Artistas que segue'
FROM users u
JOIN artists_followers ON u.id = artists_followers.user_id
GROUP BY u.full_name
ORDER BY u.full_name;