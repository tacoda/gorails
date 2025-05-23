DROP TABLE IF EXISTS products;

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  product_code INTEGER,
  price DECIMAL,
  max_discount DECIMAL
);

INSERT INTO products (name, product_code, price, max_discount)
VALUES
  ('Soap', 4398, 2.50, 0.05),
  ('Sponge', 3421, 1.75, 0.10),
  ('Shirt', 1032, 25.00, 0.40),
  ('Glasses', 8342, 10.00, 0.15),
  ('Remote', 9023, 19.99, 0.20);
SELECT * FROM products;
