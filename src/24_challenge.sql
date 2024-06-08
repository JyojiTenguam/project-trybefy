-- Escreva uma query que retorne o nome das pessoas usuárias e a quantidade de músicas reproduzidas por ela. Ordene o resultado pela maior quantidade de reprodução e em caso de empate, ordene pelo nome da pessoa, em ordem alfabética.
SELECT u.full_name AS 'Nome', COUNT(history_play_songs.song_id) AS 'Quantidade de músicas reproduzidas'
FROM users u
    JOIN history_play_songs ON u.id = history_play_songs.user_id
GROUP BY
    u.id
ORDER BY COUNT(history_play_songs.song_id) DESC, u.full_name ASC;