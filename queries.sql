-- 1. Basic SELECT with filter
SELECT name, age, city
FROM customers
WHERE age > 25
ORDER BY age DESC;

-- 2. Aggregation with GROUP BY
SELECT city, COUNT(*) as total_customers
FROM customers
GROUP BY city
ORDER BY total_customers DESC
LIMIT 5;

-- 3. INNER JOIN example
SELECT customers.name, orders.amount
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id
WHERE orders.amount > 100
ORDER BY orders.amount DESC;
