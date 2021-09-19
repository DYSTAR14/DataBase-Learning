#UC1 
show databases;
create database addressBook_service;
show databases;
use addressBook_service;

#UC2
use addressBook_service;
create table addressBook
(
	id int primary key auto_increment,
	firstname varchar(120) not null,
	lastname varchar(120) not null, 
	address varchar(1000), 
	state varchar(100), 
	city varchar(100),
	zip varchar(6), 
	phone varchar(10) not null, 
	email varchar(200)
);
desc addressBook;

#UC3
use addressBook_service;
insert into addressBook
(firstname,lastname,address,state,city,zip,phone,email)
values
(
	"Deepak","Yadav","Empress Thane","Bihar","Patna",
	"401205","9823563242","ydeepak@gmail.com"
);
select * from addressBook;

use addressBook_service;
insert into addressBook
(firstname,lastname,address,state,city,zip,phone,email)
values
("Gaurav","Samant","Empress Thane","Gujarat","Gandhinagar","401505",
"9823438723","Gaurav@gmail.com"),
("Sarang","Potpite","Pune nagar","Maharashtra","Pune","564305",
"9823326657","sarang@gmail.com"),
("Jash","Vora","Gokul Thane","Gujarat","Gandhinagar","401705",
"9823563452","jash@gmail.com"),
("Ronak","Jain","Rajasthan Thane","Rajasthan","Jaipur","408405",
"9823563476","ronak@gmail.com"),
("Rahul","Sharma","Gokul Thane","Gujarat","Gandhinagar","401756",
"9823565452","rahul@gmail.com"),
("Ramesh","Patel","Gokul Thane","Gujarat","Gandhinagar","451756",
"9839465452","ramesh@gmail.com");
select * from addressBook;

#UC4
use addressBook_service;
update addressBook set address="Empress Gb Road Thane"
where firstname="Deepak" and lastname="Yadav";
select * from addressBook;

#UC5
use addressBook_service;
delete from addressBook 
where firstname="Deepak" and lastname="Yadav";
select * from addressBook;

#UC6
use addressBook_service;
select * from addressBook where city="Jaipur";
select * from addressBook where city="Gandhinagar";

select * from addressBook where state="Maharashtra";
select * from addressBook where state="Gujarat";

select * from addressBook where city="Gandhinagar" and state="Gujarat";

#UC7
use addressBook_service;
select count(city),count(state) from addressBook;

#UC8
use addressBook_service;
select * from addressBook where city="Gandhinagar" order by firstname ASC;

#UC9
use addressBook_service;
alter table addressBook 
add addressbook_name varchar(120),
add addressbook_type varchar(120);

update addressBook 
set addressbook_name="",set addressbook_type=""
select * from addressBook;