-- Drops the bamazonManager_db if it exists currently --
DROP DATABASE IF EXISTS bamazonManager_db;
-- Creates the "bamazonManager" database --
CREATE DATABASE bamazonManager_db;

-- Makes it so all of the following code will affect bamazonManager_db --
USE bamazonManager_db;

-- Creates the table "products" within bamazonManager_db --
CREATE TABLE products (
  item_id INTEGER(11) AUTO_INCREMENT NOT NULL,
  -- below creates string columns which cannot contain null --
  product VARCHAR(100) NOT NULL,
  department VARCHAR(100) NOT NULL,
  custom_price INTEGER(10000),
  quantity INT NULL,
  PRIMARY KEY (id)
);

INSERT INTO products (product, department, customer_price, quantity)
VALUES ("godzilla trolls", kinda toys, 200, 1000);

INSERT INTO products (product, department, customer_price, quantity)
VALUES ("maple syrup", foods, 12, 1101);

INSERT INTO products (product, department, customer_price, quantity)
VALUES ("jzip skate board", kinda toys, 18, 4000);

INSERT INTO products (product, department, customer_price, quantity)
VALUES ("cupcake atm", foods, 978, 892);

INSERT INTO products (product, department, customer_price, quantity)
VALUES ("homemade mousepad", electronis, 10, 1400);

INSERT INTO products (product, department, customer_price, quantity)
VALUES ("godzilla m&m", candy, 19, 411);

INSERT INTO products (product, department, customer_price, quantity)
VALUES ("godzilla coffee bean", coffees, 23, 88);

INSERT INTO products (product, department, customer_price, quantity)
VALUES ("non-portable labtop", electronis, 790, 81);

INSERT INTO products (product, department, customer_price, quantity)
VALUES ("apple blossoms", landscpaing, 15, 11000);

INSERT INTO products (product, department, customer_price, quantity)
VALUES ("rakes", landscpaing, 18, 399);
