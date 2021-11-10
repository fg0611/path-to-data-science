use people;

CREATE TABLE students
(

    student_id SMALLINT UNSIGNED AUTO_INCREMENT ,
    name VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    age smallint unsigned NOT NULL,
    PRIMARY KEY (student_id)
);
CREATE TABLE marks
(
    mark_id SMALLINT UNSIGNED AUTO_INCREMENT,
    student_id SMALLINT UNSIGNED NOT NULL,
    mark smallint unsigned not null,
    PRIMARY KEY (mark_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

insert into students values (default,'jesus', 'garrido', 32);
insert into students values (default,'maria', 'benitez', 41);
insert into students values (default,'jess', 'tauz', 22);
insert into students values (default,'mark', 'bertz', 65);
insert into students values (default,'dali', 'arkam', 55);

insert into marks values (default,5,60);
insert into marks values (default,2,45);
insert into marks values (default,3,71);
insert into marks values (default,4,82);
insert into marks values (default,1,89);

select * from students;
select * from marks;

CREATE TABLE account
(
    user_id int UNSIGNED AUTO_INCREMENT,
    email VARCHAR(30) NOT NULL,
    password varchar(30) not null,
    PRIMARY KEY (user_id)
);
CREATE TABLE work
(
    job_id smallint UNSIGNED AUTO_INCREMENT,
    job_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (job_id)
);
CREATE TABLE ac_job
(
	id smallint unsigned,
    user_id int unsigned not null,
    job_id smallint unsigned not null,
    foreign key (user_id) references account(user_id),
    foreign key (job_id) references work(job_id)
);

select * from ac_job;

create table customers
(
id int primary key,
name varchar(10)
);
create table orders
(
id int,
date date,
foreign key (id) references customers(id)
);

SELECT * from customers as c
join orders as o
where c.id = o.id;

alter table orders
add column text varchar(30);

alter table orders
drop column text;


