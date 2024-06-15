create table FirstTable(
NAME Varchar(45)
);

select * from FirstTable;

create table author(
authno varchar(15) primary key,
NAME varchar(40),
address varchar(40),
city varchar(40),
state varchar(40),
zip varchar(40)
);

create table users(
id varchar(25) primary key,
username varchar(45),
password varchar(45),
role varchar(150)
);

select * from users;

create table userprofile(
username char(15) primary key,
icno char(15),
firstname varchar(50)
);

select * from userprofile;

create table Student(
stuno varchar(14) primary key,
name varchar (100),
program varchar (54)
);


create table marathon(
icno varchar(14) primary key,
name varchar (100),
category varchar (54)
);

select * from marathon;

CREATE TABLE userprofile2 (
    username CHAR(15) PRIMARY KEY,
    password CHAR(10),
    firstname VARCHAR(50),
    lastname VARCHAR(50)
);
select * from userprofile2;

