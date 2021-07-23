-- Comments in SQL Start with dash-dash --

--1, 2, and 3: Inserts chair, stool, and table into products table in products_db
INSERT INTO products (name, price, can_be_returned) 
VALUES ('chair', 44.00, false), ('stool', 25.99, true), ('table', 124.00, false);

--4: Display all rows and columns in table.
SELECT * FROM products;

--5 Display all names of products.
SELECT name FROM products;

--6 Display all names and prices of products.
SELECT name, price FROM products;

--7 Add a new product (I added a end table for 35.00 that can be returned.)
INSERT INTO products (name, price, can_be_returned)
VALUES ('end table', 35.00, true);

--8 Display only the products that can be returned.
SELECT * FROM products WHERE can_be_returned = true;

--9 Display only the products that have a price less than 44.00.
SELECT * FROM products WHERE price < 44.00;

--10 Display only the products that have a price between 22.50 and 99.99.
SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;

--11 Everything is $20 off!
UPDATE products SET price = price - 20;

--12 Remove everything that costs less than 25.
DELETE FROM products WHERE price < 25;

--13 Sale over; increase price of remaining items by 20.
UPDATE products SET price = price + 20;

--14 Everything is now returnable!
UPDATE products SET can_be_returned = true;