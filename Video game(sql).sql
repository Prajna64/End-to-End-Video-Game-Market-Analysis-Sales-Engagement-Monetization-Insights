CREATE DATABASE video_game_analysis;
USE video_game_analysis;

CREATE TABLE games_engagement (
    game_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    release_date DATE,
    rating FLOAT,
    times_listed FLOAT,
    reviews_count FLOAT,
    plays FLOAT,
    playing FLOAT,
    backlogs FLOAT,
    wishlist FLOAT,
    genres TEXT,
    team TEXT
);

CREATE TABLE game_sales (
    sales_id INT AUTO_INCREMENT PRIMARY KEY,
    game_name VARCHAR(255),
    platform VARCHAR(50),
    year INT,
    genre VARCHAR(50),
    publisher VARCHAR(100),
    na_sales FLOAT,
    eu_sales FLOAT,
    jp_sales FLOAT,
    other_sales FLOAT,
    global_sales FLOAT
);


CREATE TABLE merged_game_data (
    title VARCHAR(255),
    rating FLOAT,
    wishlist FLOAT,
    plays FLOAT,
    platform VARCHAR(50),
    genre VARCHAR(50),
    publisher VARCHAR(100),
    year INT,
    na_sales FLOAT,
    eu_sales FLOAT,
    jp_sales FLOAT,
    other_sales FLOAT,
    global_sales FLOAT
);


SELECT COUNT(*) FROM games_engagement;
SELECT COUNT(*) FROM game_sales;
SELECT COUNT(*) FROM merged_game_data;

-- 1 Check the top-selling games globally
SELECT title, platform, global_sales
FROM game_sales
ORDER BY global_sales DESC
LIMIT 10;

-- 2 Top games by engagement (plays, wishlist, reviews)
SELECT title, plays, wishlist, reviews_count
FROM games_engagement
ORDER BY plays DESC
LIMIT 10;

-- 3 Average rating per genre
SELECT genres, ROUND(AVG(rating),2) AS avg_rating, COUNT(*) AS total_games
FROM games_engagement
GROUP BY genres
ORDER BY avg_rating DESC
LIMIT 10;

-- 4 Total global sales by platform
SELECT platform, ROUND(SUM(global_sales),2) AS total_global_sales
FROM game_sales
GROUP BY platform
ORDER BY total_global_sales DESC;

-- 5 Top 10 Games by Engagement vs Sales
SELECT m.title, m.global_sales, g.plays, g.wishlist, g.reviews_count
FROM merged_game_data m
JOIN games_engagement g
ON m.title = g.title
ORDER BY global_sales DESC
LIMIT 10;

-- 6 Top 5 Genres by Global Sales
SELECT g.genres, ROUND(SUM(m.global_sales), 2) AS total_sales
FROM merged_game_data m
JOIN games_engagement g
ON m.title = g.title
GROUP BY g.genres
ORDER BY total_sales DESC
LIMIT 5;

-- 7 Games with High Engagement but Low Sales
SELECT m.title, m.global_sales, g.plays, g.wishlist
FROM merged_game_data m
JOIN games_engagement g
ON m.title = g.title
WHERE m.global_sales < 1 AND g.plays > 50
ORDER BY g.plays DESC
LIMIT 10;

-- 8 Platform vs Average Rating
SELECT m.platform, ROUND(AVG(g.rating), 2) AS avg_rating
FROM merged_game_data m
JOIN games_engagement g
ON m.title = g.title
GROUP BY m.platform
ORDER BY avg_rating DESC;

-- 9 Yearly Trend of Global Sales
SELECT YEAR(release_date) AS release_year, ROUND(SUM(global_sales), 2) AS total_sales
FROM merged_game_data
GROUP BY release_year
ORDER BY release_year;

