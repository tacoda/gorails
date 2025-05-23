SELECT * FROM products WHERE store_id = 2;
SELECT * FROM products WHERE store_id = 2 AND price > 10.00;

SELECT * FROM products JOIN stores ON products.store_id = stores.id;
SELECT * FROM products JOIN stores ON products.store_id = stores.id WHERE store_id = 2;

SELECT products.name, price FROM products JOIN stores ON products.store_id = stores.id WHERE store_id = 2;
SELECT products.name, price, stores.name FROM products JOIN stores ON products.store_id = stores.id WHERE store_id = 2;

SELECT
  products.name, price, stores.name
FROM
  products
JOIN
  stores ON products.store_id = stores.id
WHERE
  store_id = 2 AND price > 10.00;

SELECT
  products.name, price, stores.name
FROM
  products
JOIN
  stores ON products.store_id = stores.id
WHERE
  store_id = 2 OR price < 10.00;
