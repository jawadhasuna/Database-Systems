CREATE DATABASE java_login_register;
USE java_login_register;
CREATE TABLE the_app_users(
u_id INT PRIMARY KEY AUTO_INCREMENT,
u_fname VARCHAR(50),
u_lname VARCHAR(50),
u_username VARCHAR(50),
u_pass VARCHAR(20)
);