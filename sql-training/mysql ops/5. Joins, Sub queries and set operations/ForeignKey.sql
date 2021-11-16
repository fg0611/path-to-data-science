drop database customers;

create database customers;

USE customers;

DROP TABLE customers;
DROP TABLE orders;

CREATE TABLE customers
(
    customer_id SMALLINT UNSIGNED AUTO_INCREMENT ,
    customer_name VARCHAR(30) NOT NULL,
    phno char(10) NOT NULL,
    PRIMARY KEY (customer_id )
);

-- Setting FOREIGN KEY example :
-- FOREIGN KEY (column_in_current_table) REFERENCES table_2 (column_in_table_2)

CREATE TABLE orders
(
    order_id INT UNSIGNED ,
    customer_id SMALLINT UNSIGNED NOT NULL,
    order_details varchar(100) NOT NULL,
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

/*
HOMEWORK 
	Using the concepts of the previous section , Insert appropriate values inside customers and orders table ,
    or else you can also insert the values which we have used in tables in this lesson .
    We are going to make use of these tables for joins in our next lesson . 
*/

SELECT * FROM customers;

insert into customers values (default, 'ramon', '3517865798');
insert into customers values (default,'jesus', '3217865798');
insert into customers values (default,'fran', '3317865798');
insert into customers values (default,'maria', '333');
insert into customers values (default,'roberto', '4333');

SELECT * FROM orders;
insert into orders values (1, 2, 'pizza, coke');
insert into orders values (2, 1, 'burger, fries');
insert into orders values (3, 1, 'burger, fries');
insert into orders values (4, 2, 'coke, fries');
insert into orders values (5, 5, 'salad, fries');
insert into orders values (6, 5, 'salad, fries');

select * from orders
join customers
on customers.customer_id = orders.customer_id
where order_details like '%coke%';

-- pure join, left and right JOIN 
select * from orders O
left join customers C
on C.customer_id = O.customer_id
order by order_id desc;

-- "FULL JOIN" gives ALL but it does not exists in MySQL
-- so we have to emulate it
select * from orders O
left join customers C
on C.customer_id = O.customer_id
union
select * from orders O
right join customers C
on C.customer_id = O.customer_id;

delete from customers
where customer_id = 5;



