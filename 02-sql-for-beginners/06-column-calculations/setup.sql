CREATE TABLE products (
  name VARCHAR(40),
  product_code INTEGER,
  price NUMERIC(6, 2),
  max_discount NUMERIC(3, 2)
);

INSERT INTO products (name, product_code, price, max_discount)
VALUES
  ('Toothbrush', 1379, 5.00, 0.05),
  ('Soap', 4398, 2.50, 0.05),
  ('Sponge', 3421, 1.75, 0.10),
  ('Glasses', 8342, 10.00, 0.15),
  ('Remote', 9023, 19.99, 0.20),
  ('Shirt', 1032, 25.00, 0.40);
