SELECT store_id, AVG(price) AS average_product_price
FROM products
GROUP BY store_id;

SELECT stores.name, AVG(price) AS average_product_price
FROM products
JOIN stores ON stores.id = products.store_id
GROUP BY stores.name;

SELECT stores.name, COUNT(*)
FROM products
JOIN stores ON stores.id = products.store_id
GROUP BY stores.name;
