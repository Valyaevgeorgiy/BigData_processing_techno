# 1. Подсчитайте количество городов, в которых нет продавцов.
SELECT COUNT(DISTINCT c.id) 
FROM sellers s FULL JOIN cities c ON s.city_id = c.id
WHERE s.city_id is NULL;

# 2. Найти имя продавца в Москве, у которого за всё время вышла минимальная выручка от продаж.
SELECT s.name AS name, SUM(p.price) AS total_sales
FROM users u
JOIN cities c ON u.city_id = c.id
JOIN transactions t ON u.id = t.user_id
JOIN products p ON t.product_id = p.id
JOIN sellers s ON p.seller_id = s.id
WHERE t.status = 'completed' AND c.name = 'Moscow'
GROUP BY s.name
ORDER BY total_sales ASC
LIMIT 1;

# 3. Выведите топ-1 пользователей из Воронежа, которые оформили наиболее количество заказов в марте 2021 года.
SELECT u.name AS name, COUNT(t.id) AS purchases
FROM users u
JOIN transactions t ON u.id = t.user_id
JOIN cities c ON u.city_id = c.id
WHERE t.status = 'completed' AND (DATE_PART('year', t.created_at) = 2021) AND (DATE_PART('month', t.created_at) = '03') AND c.name = 'Voronezh'
GROUP BY u.name
ORDER BY purchases DESC
LIMIT 1;