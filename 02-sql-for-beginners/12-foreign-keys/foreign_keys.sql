DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS stores;

CREATE TABLE stores (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  product_code INTEGER,
  price DECIMAL,
  max_discount DECIMAL,
  store_id INTEGER REFERENCES stores(id)
);

INSERT INTO products (name, product_code, price, max_discount)
VALUES
  ('Soap', 4398, 2.50, 0.05),
  ('Sponge', 3421, 1.75, 0.10);
SELECT * FROM products;
SELECT * FROM products WHERE store_id IS NULL;

INSERT INTO stores (name)
VALUES ('Soap and Things');
SELECT * FROM stores;

UPDATE products SET store_id = 1;
SELECT * FROM products;

INSERT INTO stores (name)
VALUES ('Bob''s Shop');
SELECT * FROM stores;

INSERT INTO products (name, product_code, price, max_discount, store_id)
VALUES
  ('Shirt', 1032, 25.00, 0.40, 2),
  ('Glasses', 8342, 10.00, 0.15, 2),
  ('Remote', 9023, 19.99, 0.20, 2);
SELECT * FROM products;
