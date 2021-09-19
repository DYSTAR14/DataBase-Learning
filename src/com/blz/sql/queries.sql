#UC1 
show databases;
create database payroll_service;
show databases;
use payroll_service;

#UC2
create table employee_payroll(id int primary key auto_increment,
name varchar(120) not null , salary bigint , start_date date);
use payroll_service;
desc employee_payroll;

#UC3

use addressBook_service;
insert into addressBook
(firstname,lastname,address,state,city,zip,phone,email)
values
("Arpit","Patel","Gokul Thane","Gujarat","Gandhinagar","459856",
"9839865452","arpit@gmail.com");