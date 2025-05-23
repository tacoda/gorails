SELECT * FROM products;
UPDATE products SET name = 'glasses' WHERE name = 'Glasses';
SELECT * FROM products WHERE name = 'glasses';
UPDATE products SET name = 'Glasses' WHERE name = 'glasses';
SELECT * FROM products WHERE name = 'Glasses';
DELETE FROM products WHERE name = 'Shirt';
SELECT * FROM products;
DELETE FROM products WHERE price < 10.00;
SELECT * FROM products;
INSERT INTO products (name, product_code, price, max_discount)
VALUES
  ('Soap', 4398, 2.50, 0.05),
  ('Sponge', 3421, 1.75, 0.10),
  ('Shirt', 1032, 25.00, 0.40);
SELECT * FROM products;
UPDATE products SET price = 10.00;
SELECT * FROM products;
DELETE FROM products;
SELECT * FROM products;
INSERT INTO products (name, product_code, price, max_discount)
VALUES
  ('Soap', 4398, 2.50, 0.05),
  ('Sponge', 3421, 1.75, 0.10),
  ('Shirt', 1032, 25.00, 0.40),
  ('Glasses', 8342, 10.00, 0.15),
  ('Remote', 9023, 19.99, 0.20);
SELECT * FROM products;
