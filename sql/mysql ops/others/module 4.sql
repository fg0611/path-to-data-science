CREATE DATABASE CUSTOMERS;
USE CUSTOMERS;

create table CustomerDetails(
	id smallint unsigned not null primary key auto_increment,
    Name varchar(30),
    lastName varchar(30),
    age tinyint unsigned not null check (age>12),
    gender char(6) not null,
    productsBought tinyint unsigned default 0 not null
);

select * from CustomerDetails;

-- phone char(10) not null unique
alter table CustomerDetails
add (
phone char(10) unique,
email varchar(50) unique
);

-- drop column emailID;

-- to rename a column
alter table CustomerDetails
rename column Name to name;

-- to change data_types from columns
alter table CustomerDetails
modify column phone varchar(10);


-- delete all data from a table
truncate table CustomerDetails;

select * from CustomerDetails;

-- name, lastName, age, gender, productsBought, phone, email
insert into CustomerDetails (name, lastName, age, gender, productsBought, phone, email) values ('Fran', 'Garrido', 33, 'male', 3, '351765798', 'fg@gmail.com');
insert into CustomerDetails (name, lastName, age, gender, productsBought, phone, email) values ('Ana', 'Tovar', 34, 'female', 45, '356765798', 'ab@gmail.com');

-- another easier way to add values when some cols are set to autoIncrement
insert into CustomerDetails values (default, 'Anna', 'Tovar', 34, 'female', default, '356765799', 'abc@gmail.com');

-- another leaving as defaults id and boughtProds
insert into CustomerDetails
(name, lastName, age, gender, phone, email) 
values
('Ann', 'Var', 34, 'female', '3567657', 'abcd@gmail.com');

update CustomerDetails
set phone = '3547789966'
where id = 7;

update CustomerDetails
set age = '54', productsBought = 3
where id = 1;

-- delete a row using id

delete from CustomerDetails
where id = 7;




