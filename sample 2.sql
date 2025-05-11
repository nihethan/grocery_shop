CREATE TABLE order_table(
  order_id VARCHAR(100) PRIMARY KEY,
  order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  total_amount INTEGER,
  order_status VARCHAR(20),
 -- customer_id  VARCHAR(200),
 
 customer_email VARCHAR(200)
--FOREIGN KEY (customer_id) REFERENCES customer_details(customer_id)
);

DELETE FROM order_view_table;
DELETE FROM order_table;

--DELETE FROM order_view_table WHERE order_view_id="db0794d3-427c-4344-8ee5-bb41d84865e6";
ALTER TABLE order_view_table
ADD COLUMN single_product_price;
RENAME COLUMN cutomer_id TO customer_id;
DROP TABLE order_table;
DROP TABLE order_view_table;
SELECT * FROM customer_details;
SELECT * FROM product;
DROP TABLE product;

DROP TABLE customer_details;
CREATE TABLE product(
  product_id VARCHAR(100) PRIMARY KEY,
  product_name VARCHAR(100),
  product_unit INTEGER,
  product_mrt INTEGER,
  product_price INTEGER,
  product_tax INTEGER
);

CREATE TABLE customer_details(
  customer_id VARCHAR(100) PRIMARY KEY,
  customer_name VARCHAR(100) ,
  customer_mobile_number VARCHAR(10) UNIQUE,
 customer_email VARCHAR(100) UNIQUE,
  customer_address VARCHAR(100)
 -- product_tax INTEGER
);

SELECT * FROM order_table;
SELECT * FROM order_view_table;
CREATE TABLE order_view_table(
 
  order_id  VARCHAR(100) PRIMARY KEY,
  product_id  VARCHAR(100),
  product_name  VARCHAR(100),
  product_unit INTEGER,
  product_price INTEGER ,
  product_mrp INTEGER,
  product_tax INTEGER,
  product_quantity INTEGER,
  single_product_price INTEGER
 --  FOREIGN KEY (order_id) REFERENCES order_table(order_id),
 --  FOREIGN KEY (product_id) REFERENCES product(product_id)
);