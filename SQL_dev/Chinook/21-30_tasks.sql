#21 Покажите фамилии клиентов, которые купили больше 40 музыкальных треков. Решить задачу, как минимум, 2-мя способами: джойнами и подзапросами.
SELECT CustomerId, LastName, FirstName, (
       SELECT SUM(countT)
       FROM (
           SELECT customerid, (
               SELECT SUM(quantity)
               FROM sales_items
               WHERE sales_items.SalesId = sales.SalesId
           ) AS countT
           FROM sales
       ) AS salescustomers
       WHERE salescustomers.customerid = customers.CustomerId) AS countTracks
FROM customers
WHERE (SELECT SUM(countT)
       FROM (
           SELECT customerid, (
               SELECT SUM(quantity)
               FROM sales_items
               WHERE sales_items.SalesId = sales.SalesId
           ) AS countT
           FROM sales
       ) AS salescustomers
       WHERE salescustomers.customerid = customers.CustomerId) > 40
ORDER BY countTracks DESC;

SELECT c.CustomerId, c.LastName, c.FirstName, sum(si.Quantity) as countTracks
FROM sales_items si
JOIN sales s ON si.SalesId = s.SalesId
JOIN customers c ON s.CustomerId = c.CustomerId
GROUP BY c.CustomerId
HAVING countTracks > 30
ORDER BY countTracks DESC;

#22 В базе есть таблица музыкальных треков и жанров. Назовите среднюю стоимстость музыкального трека в каждом жанре.
SELECT (SELECT Name FROM genres WHERE genres.GenreId = tracks.GenreId) as GenreName, ROUND(avg(UnitPrice), 2) as AvgTrackPrice
FROM tracks
GROUP BY GenreId
ORDER BY AvgTrackPrice DESC;

#23 В базе есть таблица музыкальных треков и жанров. Покажите жанры, у которых средняя стоимость одного трека больше 1$.
SELECT (SELECT Name FROM genres WHERE genres.GenreId = tracks.GenreId) as GenreName, ROUND(avg(UnitPrice), 2) as AvgTrackPrice
FROM tracks
GROUP BY GenreId
HAVING AvgTrackPrice > 1;

#24 Посчитать количество продаж для каждого клиента. Итог: Фамилия, Имя, Количество продаж.
SELECT LastName, FirstName, (
        SELECT count(*)
        FROM sales
        WHERE sales.CustomerId = customers.CustomerId
    ) AS CountSales
FROM customers
ORDER BY CountSales DESC;

#25 Сколько музыкальных треков купил каждый клиент? Итог: Фамилия, Имя, Количество треков.
SELECT LastName, FirstName, IFNULL((
        SELECT sum(quantity)
        FROM sales_items
        WHERE sales_items.SalesId in (
            SELECT SalesId
            FROM sales
            WHERE sales.CustomerId = customers.CustomerId
        )
    ), 0) AS CountSales
FROM customers
ORDER BY CountSales DESC;

#26 В какую страну было продано больше всего музыкальных треков в жанре Jazz?
SELECT ShipCountry, SUM(IFNULL((
        SELECT SUM(quantity)
        FROM sales_items
        WHERE sales_items.SalesId = sales.SalesId
            AND sales_items.TrackId IN (
                SELECT TrackId
                FROM tracks
                WHERE genreid IN (
                    SELECT genreid
                    FROM genres
                    WHERE name = 'Jazz'
                )
            )
    ), 0)) AS countSales
FROM sales
GROUP BY ShipCountry
ORDER BY countSales DESC
LIMIT 1;

#27 Сколько покупок сделал каждый клиент в 2009 году? Итог: Фамилия, Имя, Количество покупок.
SELECT LastName, FirstName, (
        SELECT count(*)
        FROM sales
        WHERE sales.CustomerId = customers.CustomerId
            AND YEAR(SalesDate) = 2009) AS CountSales
FROM customers
ORDER BY CountSales DESC;

SELECT LastName, FirstName, count(s.SalesDate) AS CountSales
FROM customers c LEFT JOIN sales s
ON c.CustomerId = s.CustomerId AND YEAR(s.SalesDate) = 2009
GROUP BY c.CustomerId
ORDER BY CountSales DESC;

#28 Сколько денег потратил каждый покупатель на музыкальный трек №1
SELECT LastName, FirstName, IFNULL((
        SELECT sum(si.UnitPrice * si.Quantity)
        FROM sales_items si
        WHERE si.TrackId=1 AND si.SalesId in (
            SELECT s.SalesId
            FROM sales s
            WHERE s.CustomerId = customers.CustomerId
        )
    ), 0) AS SumPrice
FROM customers
ORDER BY SumPrice DESC;

SELECT c.LastName, c.FirstName, IFNULL(sum(si.UnitPrice * si.Quantity), 0) AS SumPrice
FROM customers c
LEFT JOIN sales s ON c.CustomerId = s.CustomerId
LEFT JOIN sales_items si ON s.SalesId = si.SalesId AND si.TrackId = 1
GROUP BY c.CustomerID
ORDER BY SumPrice DESC;

#29 Покажите самого старого сотрудника для каждой страны.
SELECT LastName, FirstName, Country, Age
FROM (
    SELECT LastName, FirstName, Country, Age,
        ROW_NUMBER() OVER(PARTITION BY Country ORDER BY Age DESC) AS AgeRank
    FROM customers
)
WHERE AgeRank = 1
ORDER BY Age DESC;
