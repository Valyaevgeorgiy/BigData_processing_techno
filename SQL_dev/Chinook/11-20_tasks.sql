#11 Покажите в алфавитном порядке Фамилию, Имя и год рождения покупателей.
SELECT LastName, FirstName, (YEAR(NOW()) - Age) AS BirthYear
FROM customers
ORDER BY LastName, FirstName, BirthYear;

#12 Сколько секунд длится самая короткая песня?
SELECT (ROUND(Milliseconds / 1000, 2)) AS Seconds
FROM tracks
WHERE Milliseconds = (SELECT min(Milliseconds) FROM tracks);

#13 Покажите название и длительность в секундах самой короткой песни.
SELECT Name, (ROUND(Milliseconds / 1000, 2)) AS Seconds
FROM tracks
WHERE Milliseconds = (SELECT min(Milliseconds) FROM tracks);

#14 Покажите средний возраст клиента для каждой страны.
SELECT Country, ROUND(avg(Age), 2) AS AvgAge
FROM customers
GROUP BY Country
ORDER BY AvgAge DESC;

#15 Покажите Фамилии работников, нанятых в октябре.
SELECT LastName, HireDate
FROM employees
WHERE MONTH(HireDate) = '10';

#16 Покажите фамилию самого старого по стажу сотрудника в кампании.
SELECT LastName, (ROUND(DATEDIFF(NOW(), HireDate) / 365, 2)) AS Stazh
FROM employees
WHERE HireDate = (SELECT min(HireDate) FROM employees);

#17 Посчитайте общую сумму продаж в Америку в 1 квартале 2012 года. Решить 2-мя способами: джойнами и подзапросами.
SELECT SUM((
        SELECT SUM(Quantity * UnitPrice)
        FROM sales_items
        WHERE sales_items.SalesId = sales.SalesId
        )) AS SumPrice
FROM sales
WHERE sales.ShipCountry = 'USA' AND (sales.SalesDate BETWEEN '2012-01-01' AND '2012-04-01');

SELECT SUM(sales_items.UnitPrice) AS SumPrice
FROM sales JOIN sales_items ON sales.SalesId = sales_items.SalesId
WHERE sales.ShipCountry = 'USA' AND (sales.SalesDate BETWEEN '2012-01-01' AND '2012-04-01');

#18 Покажите имена клиентов, которых нет среди работников. Решить 3-мя способами: подзапросами, джойнами и логическим вычитанием.
SELECT DISTINCT FirstName
FROM customers
WHERE FirstName NOT IN (SELECT FirstName FROM employees);

SELECT DISTINCT customers.FirstName
FROM customers LEFT JOIN employees ON customers.FirstName = employees.FirstName
WHERE employees.FirstName IS NULL;

SELECT DISTINCT FirstName
FROM customers
EXCEPT 
SELECT DISTINCT FirstName
FROM customers
WHERE FirstName in (SELECT FirstName FROM employees);

#19 Посчитайте количество треков в каждом альбоме. В результате должно быть: имя альбома и кол-во треков. Решить 2-мя способами: подзапросом и джойнами.
SELECT Title,
       (
           SELECT COUNT(TrackId)
           FROM tracks
           WHERE tracks.AlbumId = albums.AlbumId
       ) AS CountTracks
FROM albums
ORDER BY CountTracks DESC;

SELECT albums.Title, count(tracks.TrackId) AS CountTracks
FROM albums JOIN tracks ON albums.AlbumId = tracks.AlbumId
GROUP BY albums.AlbumId
ORDER BY CountTracks DESC;

#20 Покажите фамилию и имя покупателей немцев, сделавших заказы в 2009 году, товары которых были отгружены в город Берлин.
SELECT DISTINCT (
        SELECT CONCAT(LastName, ' ', FirstName)
        FROM customers
        WHERE customers.CustomerId = sales.CustomerId AND customers.Country = 'Germany'
    ) AS CustomerInfo
FROM sales
WHERE YEAR(sales.SalesDate) = '2009' AND sales.ShipCity = 'Berlin';

SELECT LastName, FirstName
FROM customers
WHERE Country = 'Germany' AND CustomerId in (
    SELECT CustomerId
    FROM sales
    WHERE YEAR(SalesDate) = 2009 AND ShipCity = 'Berlin'
);
