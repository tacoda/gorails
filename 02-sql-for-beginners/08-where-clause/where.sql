SELECT * FROM products WHERE price >= 10.00;
SELECT * FROM products WHERE price <= 10.00;
SELECT * FROM products WHERE price = 10.00;
SELECT * FROM products WHERE price != 10.00;
SELECT * FROM products WHERE price != 10.00 AND max_discount = 0.05;
SELECT name FROM products WHERE price != 10.00 AND max_discount = 0.05;
SELECT name FROM products WHERE price != 10.00 AND max_discount = 0.05 OR name = 'Remote';
SELECT name FROM products WHERE (price != 10.00 AND max_discount = 0.05) OR name = 'Remote';
SELECT name FROM products WHERE price != 10.00 AND (max_discount = 0.05 OR name = 'Remote');
SELECT * FROM products WHERE price BETWEEN 5.00 AND 20.00;
SELECT * FROM products WHERE name IN ('Soap', 'Sponge');
SELECT * FROM products WHERE name NOT IN ('Soap', 'Sponge');
