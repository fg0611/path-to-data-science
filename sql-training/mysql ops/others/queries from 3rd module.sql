use people;
select * from citizen;

-- top 5 salaries
select * from citizen order by salary desc limit 5;

-- 5 least salaries from citizens in China
select * from citizen where country = 'China' order by salary limit 5;

-- find 50 countries, remove duplicates and order by A-Z
select distinct (country) as 'countries' from citizen order by country asc limit 50;

-- round salaries to 1 decimal
select id, first_name, country, ceiling(salary) as salaries from citizen;

-- fetch id, length of name, name,  1st 4 chars of name and the last 4 chars of lastname 
select id, length(first_name), first_name, left(first_name, 4),  right(last_name, 4) 
from Citizen;

-- fetch complete name
select concat(first_name, ' '  , last_name) as fullname from citizen;

-- 
select id, concat(left(first_name, 4), ' ' , right(last_name, 4)) as mixNames 
from Citizen;

-- This query will show an error, because Where clause cant be used for Groups or
-- to Summarized data
select country, avg(salary) 
from Citizen
where avg(salary) > 30000
group by country;

-- to fix 
select country, avg(salary) as avgS
from Citizen
group by country
having avgS > 300000
order by 2 desc;

-- gender avg(salary) > 4000
select gender, avg(salary) as avg_Salary 
from citizen
group by gender having avg_Salary > 400
order by 2 desc limit 1;

-- Quiz last names that starts with A and contains C
select * from citizen where last_name like 'a%c%';  

-- 1 everything that starts wih A and has 3 chars
select * from citizen where last_name like 'a__%';  
-- 2 everything 
select * from citizen where last_name like '_a%b';
-- 3 everything 
select * from citizen where last_name like '%d__';
-- 4 everything 
insert into Citizen (id, first_name, last_name, email, gender, country, phone, address, salary) 
values (401, 'Sonia', 'Garab', 'nmunnery0@rakuten.co.jp', 
'Female', 'Philippines', '372-436-0237',
'8 Kropf Junction', 279564.23);
select * from citizen where first_name like '_ac%d_';

-- select 'india' from 'i love my india'
select right('i love my india', 5); 
select locate('india', 'i love my india');
select substring('i love my india', 11); 
select substring('i love my india', 11); 
select substring('i love my india', 11, 5); 
select substring('i love my india', -5);

 
CREATE TABLE customers (
	ID INT NOT NULL PRIMARY KEY,
	NAME VARCHAR(35) NOT NULL,
	AGE INT UNSIGNED NOT NULL,
	ADDRESS VARCHAR(100),
	SALARY DECIMAL
);

ALTER TABLE CUSTOMERS
MODIFY COLUMN AGE INT UNSIGNED NOT NULL;

ALTER TABLE CUSTOMERS
RENAME COLUMN ADDRESS TO LOCATION;

CREATE TABLE PERSONS (
	PERSON_ID INT NOT NULL PRIMARY KEY,
	LAST_NAME VARCHAR(255),
	FIRST_NAME VARCHAR(255),
	ADDRESS VARCHAR(255),
	CITY VARCHAR(255)
);

ALTER TABLE CUSTOMERS
ADD COLUMN DATE_OF_BIRTH DATE;

CREATE TABLE STUDENT (
	STUDENT_ID INT NOT NULL PRIMARY KEY,
	FIRST_NAME VARCHAR(30) NOT NULL,
	LAST_NAME VARCHAR(100) NOT NULL,
	AGE INT UNSIGNED
);

SELECT * FROM STUDENT;

ALTER TABLE STUDENT
ADD (
 FATHER_NAME VARCHAR(30),
 MOTHER_NAME VARCHAR(30),
DOB DATE DEFAULT (1999-01-01));

-- if you want to add Cols at specific position use "FIRST" OF "AFTER"
-- FIRST will create it up front

ALTER TABLE STUDENT
ADD NEW VARCHAR(30) AFTER AGE;

DROP TABLE STUDENT;












