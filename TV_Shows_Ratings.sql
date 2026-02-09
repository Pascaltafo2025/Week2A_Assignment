CREATE TABLE tv_show_ratings (
    rating_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    show_id INT NOT NULL,
    show_name VARCHAR(100),
    rating INT CHECK (rating BETWEEN 1 AND 5)
);

INSERT INTO tv_show_ratings (user_id, show_id, show_name, rating) VALUES
(1, 1, 'Stranger Things', 5),
(1, 2, 'Breaking Bad', 4),
(1, 3, 'The Crown', 5),
(1, 4, 'The Witcher', NULL),
(1, 5, 'Money Heist', 4),
(1, 6, 'Squid Game', NULL);

INSERT INTO tv_show_ratings (user_id, show_id, show_name, rating) VALUES
(2, 1, 'Stranger Things', 4),
(2, 2, 'Breaking Bad', 5),
(2, 3, 'The Crown', NULL),
(2, 4, 'The Witcher', 3),
(2, 5, 'Money Heist', 4),
(2, 6, 'Squid Game', 5);

INSERT INTO tv_show_ratings (user_id, show_id, show_name, rating) VALUES
(3, 1, 'Stranger Things', 5),
(3, 2, 'Breaking Bad', NULL),
(3, 3, 'The Crown', 4),
(3, 4, 'The Witcher', 4),
(3, 5, 'Money Heist', NULL),
(3, 6, 'Squid Game', 5);

INSERT INTO tv_show_ratings (user_id, show_id, show_name, rating) VALUES
(4, 1, 'Stranger Things', NULL),
(4, 2, 'Breaking Bad', 5),
(4, 3, 'The Crown', 4),
(4, 4, 'The Witcher', NULL),
(4, 5, 'Money Heist', 3),
(4, 6, 'Squid Game', 4);

INSERT INTO tv_show_ratings (user_id, show_id, show_name, rating) VALUES
(5, 1, 'Stranger Things', 4),
(5, 2, 'Breaking Bad', 5),
(5, 3, 'The Crown', NULL),
(5, 4, 'The Witcher', 3),
(5, 5, 'Money Heist', 4),
(5, 6, 'Squid Game', NULL);

SELECT
    user_id,
    MAX(CASE WHEN show_name = 'Stranger Things' THEN rating END) AS Stranger_Things,
    MAX(CASE WHEN show_name = 'Breaking Bad' THEN rating END) AS Breaking_Bad,
    MAX(CASE WHEN show_name = 'The Crown' THEN rating END) AS The_Crown,
    MAX(CASE WHEN show_name = 'The Witcher' THEN rating END) AS The_Witcher,
    MAX(CASE WHEN show_name = 'Money Heist' THEN rating END) AS Money_Heist,
    MAX(CASE WHEN show_name = 'Squid Game' THEN rating END) AS Squid_Game
FROM tv_show_ratings
GROUP BY user_id
ORDER BY user_id;

