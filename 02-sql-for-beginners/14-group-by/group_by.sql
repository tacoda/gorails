SELECT * FROM products;

SELECT store_id
FROM products;

SELECT store_id
FROM products
GROUP BY store_id;

--SELECT store_id, price
--FROM products
--GROUP BY store_id;

SELECT store_id, MAX(price) AS most_expensive_product_price
FROM products
GROUP BY store_id;

SELECT store_id, COUNT(*)
FROM products
GROUP BY store_id;

SELECT store_id, AVG(price) AS average_product_price
FROM products
GROUP BY store_id;
