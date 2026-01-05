CREATE DATABASE QUICKBITE ;
USE QUICKBITE;
CREATE TABLE Customer(
CID INT PRIMARY KEY,
NAME VARCHAR(30) NOT NULL,
EMAIL VARCHAR(30) UNIQUE,
PHONE VARCHAR(13) NOT NULL,
CITY VARCHAR(30) DEFAULT 'UNKNOWN'
);
CREATE TABLE Restaurant(
RID INT PRIMARY KEY,
RNAME VARCHAR(50) NOT NULL,
CITY VARCHAR(30) NOT NULL,
RATING DECIMAL(2,1) CHECK (RATING BETWEEN 1 AND 5)
);
CREATE TABLE Orders(
OID INT PRIMARY KEY,
CID INT,
FOREIGN KEY (CID) REFERENCES Customer(CID),
RID INT,
FOREIGN KEY (RID) REFERENCES Restaurant(RID),
ORDERDATE DATE ,
TOTALAMOUNT DECIMAL(8,2) CHECK(TOTALAMOUNT>0),
STATUS VARCHAR(20)
);
INSERT INTO Customer VALUES
(1,'Ali','ali@gmail.com','0301111111','Lahore'),
(2,'Sara','sara@gmail.com','0302222222','Karachi'),
(3,'Ahmed','ahmed@gmail.com','0303333333','Islamabad'),
(4,'Ayesha','ayesha@gmail.com','0304444444','Lahore'),
(5,'Usman','usman@gmail.com','0305555555','Multan'),
(6,'Hina','hina@gmail.com','0306666666','Karachi'),
(7,'Bilal','bilal@gmail.com','0307777777','Faisalabad'),
(8,'Zara','zara@gmail.com','0308888888','Lahore'),
(9,'Hamza','hamza@gmail.com','0309999999','Quetta'),
(10,'Noor','noor@gmail.com','0310000000','Peshawar');

INSERT INTO Restaurant VALUES
(1,'Pizza Hub','Lahore',4.5),
(2,'Burger Town','Karachi',4.2),
(3,'Spice Villa','Islamabad',4.7),
(4,'Food Street','Lahore',3.9),
(5,'BBQ House','Multan',4.1),
(6,'Urban Bites','Karachi',4.3),
(7,'Taste Corner','Faisalabad',3.8),
(8,'Quick Meals','Lahore',4.0),
(9,'Royal Dine','Quetta',4.6),
(10,'Foodies','Peshawar',4.4);

INSERT INTO Orders VALUES
(101,1,1,'2025-01-01',1200,'Delivered'),
(102,2,2,'2025-01-02',800,'Pending'),
(103,3,3,'2025-01-03',1500,'Delivered'),
(104,4,4,'2025-01-04',600,'Cancelled'),
(105,5,5,'2025-01-05',2000,'Delivered'),
(106,6,6,'2025-01-06',900,'Pending'),
(107,7,7,'2025-01-07',700,'Delivered'),
(108,8,8,'2025-01-08',1100,'Delivered'),
(109,9,9,'2025-01-09',1600,'Pending'),
(110,10,10,'2025-01-10',1300,'Delivered');
