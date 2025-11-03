CREATE DATABASE MEGAMART;
USE MEGAMART;
CREATE TABLE SALESDATA(
 sale_id INT AUTO_INCREMENT PRIMARY KEY,
 salesman_name VARCHAR(50),
 region VARCHAR(30),
 product_category VARCHAR(50),
 quantity INT,
 total_amount DECIMAL(10,2),
 sale_date DATE
);
INSERT INTO SALESDATA(salesman_name, region, product_category, quantity, total_amount, sale_date)
VALUES 
 ('Ali', 'North', 'Mobile', 10, 120000.00, '2025-01-15'),
 ('Sara', 'South', 'Laptop', 5, 350000.00, '2025-02-10'),
 ('Ahmed', 'East', 'TV', 3, 180000.00, '2025-03-18'),
 ('Raza', 'West', 'Tablet', 8, 96000.00, '2025-03-20'),
 ('Ali', 'North', 'Laptop', 4, 280000.00, '2025-04-05'),
 ('Sara', 'South', 'Mobile', 12, 144000.00, '2025-04-12'),
 ('Ahmed', 'East', 'Laptop', 6, 420000.00, '2025-04-25'),
 ('Raza', 'West', 'TV', 5, 300000.00, '2025-05-03'),
 ('Ali', 'North', 'TV', 2, 120000.00, '2025-05-18'),
 ('Sara', 'South', 'Tablet', 9, 117000.00, '2025-06-08'),
 ('Ahmed', 'East', 'Mobile', 7, 84000.00, '2025-06-20'),
 ('Raza', 'West', 'Laptop', 3, 210000.00, '2025-07-02');
 SELECT REGION,COUNT(sale_id) AS TOTALSALES,
 SUM(quantity) AS TOTALQUANTITY,
 SUM(total_amount) AS TOTALSALES,
 AVG(total_amount) AS AVGSALES
 FROM SALESDATA
 GROUP BY REGION;
 
 SELECT  product_category,
 SUM(quantity) AS SOLDQTY,
 MAX(total_amount) AS HIGHESTSALE,
 MIN(total_amount) AS LOWESTSALE
 FROM SALESDATA
 GROUP BY product_category;
 
 SELECT product_category,region,
 SUM(quantity) AS TOTALQTY,
 SUM(total_amount) AS TOTALAMOUNT
 FROM SALESDATA
 GROUP BY region,product_category;
  SELECT region,
 SUM(quantity) AS TOTALQTY,
 SUM(total_amount) AS TOTALAMOUNT
 FROM SALESDATA
 GROUP BY region;
 SELECT product_category,
 SUM(quantity) AS TOTALQTY,
 SUM(total_amount) AS TOTALAMOUNT
 FROM SALESDATA
 GROUP BY product_category;