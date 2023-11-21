SELECT * FROM games_sales.vgsales;
-- global sales over the years
SELECT
    Year,
    SUM(global_sales) AS global_sales
FROM
    games_sales.vgsales
GROUP BY
    year
ORDER BY
    year;
-- top 10 games by global sales
SELECT
    name,
    global_sales
FROM
   games_sales.vgsales
ORDER BY
    global_sales DESC
LIMIT 10;

-- avarage global sales
SELECT
    AVG(global_sales) AS srednia_sprzedaz_globalna
FROM
    games_sales.vgsales;
    
-- number of games released on each platform
SELECT
    platform,
    COUNT(*) AS liczba_gier
FROM
    games_sales.vgsales
GROUP BY
    platform;
-- total global sales for each game genre
SELECT
    genre,
    SUM(global_sales) AS suma_sprzedazy_globalnej
FROM
	games_sales.vgsales
GROUP BY
    genre;


SELECT
    year,
    (NA_Sales / global_sales) * 100 AS udzial_procentowy_NA,
    (EU_Sales / global_sales) * 100 AS udzial_procentowy_EU,
    (JP_Sales / global_sales) * 100 AS udzial_procentowy_JP,
    (Other_Sales / global_sales) * 100 AS udzial_procentowy_Other
FROM
    games_sales.vgsales;
