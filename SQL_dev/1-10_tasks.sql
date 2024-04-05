#1 Покажите фамилию и имя клиентов из города Прага.
SELECT LastName, FirstName
FROM customers
WHERE City = 'Prague';

#2 Покажите фамилию и имя клиентов, у которых имя начинается на букву M, содержит символ "ch".
SELECT LastName, FirstName
FROM customers
WHERE FirstName LIKE 'M%';

SELECT LastName, FirstName
FROM customers
WHERE FirstName LIKE '%ch%';

#3 Покажите название и размер музыкальных треков в Мегабайтах.
SELECT Name, ROUND(Bytes / (1024 * 1024), 2) AS MegaBytes
FROM tracks;

#4 Покажите фамилию и имя сотрудников кампании, нанятых в 2002 году, из города Калгари.
SELECT LastName, FirstName
FROM employees
WHERE (YEAR(HireDate) = '2002') AND (City = 'Calgary');

#5 Покажите фамилию и имя сотрудников кампании, нанятых в возрасте 40 лет и выше.
SELECT LastName, FirstName
FROM employees
WHERE ROUND((DATEDIFF(HireDate, BirthDate) / 365), 2) > 40;

#6 Покажите покупателей-американцев без факса.
SELECT *
FROM customers
WHERE Country = "USA" AND Fax IS NULL;

#7 Покажите канадские города, в которые сделаны продажи в августе и сентябре месяце.
SELECT *
FROM sales
WHERE ShipCountry = 'Canada' AND (MONTH(SalesDate) IN ('08', '09'));

#8 Покажите почтовые адреса клиентов из домена gmail.com.
SELECT *
FROM customers
WHERE Email LIKE '%gmail.com';

#9 Покажите сотрудников, которые работают в компании уже 21 год и более.
SELECT * 
FROM employees
WHERE ROUND((DATEDIFF(NOW(), HireDate) / 365), 2) >= 21;

#10 Покажите в алфавитном порядке все должности в компании.
SELECT DISTINCT Title
FROM employees
ORDER BY Title;
