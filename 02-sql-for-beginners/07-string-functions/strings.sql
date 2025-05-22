SELECT name || ' - $' || price AS listing FROM products;
SELECT CONCAT(name, ' - $', price) AS listing FROM products;
SELECT UPPER(name) FROM products;
SELECT LOWER(name) FROM products;
SELECT CHAR_LENGTH(name) FROM products;
SELECT name, CHAR_LENGTH(name) FROM products;
SELECT UPPER(CONCAT(name, ' - $', price)) AS listing FROM products;
