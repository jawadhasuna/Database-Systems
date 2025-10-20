DROP DATABASE E_COMMERCE_DB;
CREATE DATABASE E_COMMERCE_DB;
USE E_COMMERCE_DB;
CREATE TABLE Supplier(
Supplier_ID INT PRIMARY KEY,
Supplier_Name VARCHAR(50),
City VARCHAR(30)
);
CREATE TABLE Product(
Product_ID INT PRIMARY KEY,
Product_Name VARCHAR(40),
Price DECIMAL(8,2),
Sup_ID INT,
FOREIGN KEY (Sup_ID) REFERENCES Supplier(Supplier_ID)
ON UPDATE CASCADE
ON DELETE CASCADE,
Sup_Name VARCHAR(50)
);
INSERT INTO Supplier VALUES (1,'Jawad','Islamabad'),(2,'Ali','Karachi'),(3,'Qasim','Multan'),(4,'Farhan','Rawalpindi');
INSERT INTO Product VALUES(01,'juice',40.4,1,'Qasim'),(02,'chips',5000.4,2,'Qasim'),(03,'fruits',10.4,3,'Zaid'),(04,'milk',20.4,4,'Usman'),(05,'coke',30.4,1,'Umar'),(06,'biscuit',80.4,2,'Zain'),(07,'yogurt',70.4,3,'Zubair'),(08,'cake',60.4,4,'Zohan');
INSERT INTO Product SELECT 100,'KITKAT',43.2,Supplier_ID,Supplier_Name FROM Supplier WHERE Supplier_ID=1;
UPDATE Product SET Price=Price+Price*0.1;
DELETE FROM Product WHERE Price<3000;
DELETE FROM Supplier WHERE Supplier_ID =2;
UPDATE Supplier SET Supplier_ID=22 WHERE Supplier_Name='Jawad';
SELECT* FROM Supplier WHERE City='Islamabad';
ALTER TABLE Product ADD COLUMN Total_Sales INT;
ALTER TABLE SUPPLIER MODIFY Supplier_Name VARCHAR(30);