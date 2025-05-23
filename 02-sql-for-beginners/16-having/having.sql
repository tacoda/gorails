SELECT stores.name, COUNT(*)
FROM products
JOIN stores ON stores.id = products.store_id
GROUP BY stores.name
HAVING COUNT(*) > 2;

SELECT store_id, MAX(price) AS maximum_product_price
FROM products
GROUP BY store_id;

SELECT store_id, MAX(price) AS maximum_product_price
FROM products
GROUP BY store_id
HAVING MAX(price) > 5.00;

SELECT stores.name, MAX(price) AS maximum_product_price
FROM products
JOIN stores ON stores.id = products.store_id
GROUP BY stores.name;

SELECT stores.name, MAX(price) AS maximum_product_price
FROM products
JOIN stores ON stores.id = products.store_id
GROUP BY stores.name
HAVING MAX(price) > 5.00;

SELECT stores.name, COUNT(*) AS number_of_products
FROM products
JOIN stores ON stores.id = products.store_id
GROUP BY stores.name
HAVING MAX(products.max_discount) > 0.20;
