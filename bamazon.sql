DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
  item_id INT NOT AUTO_INCREMENT,
  product_name VARCHAR(255), 
  department_name DECIMAL(10,2), 
  price DECIMAL(10,2),
  stock_quantity INT,
  PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("V-Neck T-shirt", "Apparel", 8.50, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Socks", "Apparel", 10.50, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Air Fryer", "Appliances", 90.50, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Keurig", "Appliances", 69.99, 70);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Dining Table", "Furniture", 150.00, 40 );

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Sofa", "Furniture", 400.00, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("4k TV", "Electronics", 1000.00, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Printer", "Electronics", 59.00, 30);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Dog Bed", "Pet Supplies", 20.00, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Bully Sticks", "Pet Supplies", 25.00, 50);
