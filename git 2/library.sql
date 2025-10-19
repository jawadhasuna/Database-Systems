CREATE DATABASE LibraryDB;
USE LibraryDB;
CREATE TABLE Books(
book_id INT PRIMARY KEY,
title VARCHAR(100),
author VARCHAR(50),
published_year INT NOT NULL
);
INSERT INTO Books values(001,'running man','jawad',2020);
INSERT INTO Books values(002,'moon walker','ali',2021);
INSERT INTO Books values(003,'roof man','asfand',2022);
INSERT INTO Books values(004,'fault in sky','umair',2023);
INSERT INTO Books values(005,'tennis is love','talha',2024);
SELECT* FROM Books;