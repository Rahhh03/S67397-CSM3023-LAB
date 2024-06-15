Create database if not exists Company;
USE Company;

create table if not exists employees(
id int not null auto_increment,
Name varchar(60),
Email varchar(50),
Position varchar(15),
primary key (id)
);

select * from employees;

CREATE DATABASE if not EXISTS carshop; 
USE carshop; 
CREATE TABLE if not EXISTS CarPricelist( 
Car_id INT NOT NULL AUTO_INCREMENT, 
Brand VARCHAR(15), 
Model VARCHAR(30), 
Cyclinder INT, 
Price DOUBLE, 
PRIMARY KEY (Car_id) 
);
