USE people;

-- Q1 . Fetch the name and marks of student who has the highest marks

SELECT *
FROM StudentMarks;

SELECT SD.name , marks 
FROM StudentMarks SM 
INNER JOIN StudentDetails SD
ON SM.class = SD.class AND SM.roll_no = SD.roll_no
WHERE marks = (SELECT MAX(marks) FROM StudentMarks);

-- Challenge : Fetch the value of highest marks from StudentMarks table

SELECT MAX(marks) FROM StudentMarks;

-- Challenge : Select the name and marks of all the students who have their marks more than average marks

SELECT AVG(marks) FROM StudentMarks;

SELECT SD.name , marks 
FROM StudentMarks SM 
INNER JOIN StudentDetails SD
ON SM.class = SD.class AND SM.roll_no = SD.roll_no
WHERE marks > (SELECT AVG(marks) FROM StudentMarks);


-- Homework : Fetch the name and marks of students whose marks are less than the average mark and studying in 8th class
-- HINT : You need to add an extra condition "class" inside the “WHERE” clause . 

select name, marks, sm.class
from studentmarks sm
join studentdetails sd
ON sm.class = sd.class AND sm.roll_no = sd.roll_no
where marks < (select avg(marks) from studentmarks where class = 8);

select name, marks,  sm.class
from studentmarks sm
join studentdetails sd
ON sm.class = sd.class AND sm.roll_no = sd.roll_no AND sm.class = 8
where marks > (select avg(marks) from studentmarks);

select name, marks
from studentmarks sm
join studentdetails sd
ON sm.class = sd.class AND sm.roll_no = sd.roll_no
where marks > (select avg(marks) from studentmarks);

-- max mark
select max(marks) from studentmarks;

-- we can't use the prev query inside the next UPDATE because MySQL considers it an unsafe Sub-Query
-- so we use this one
select max(marks) from (select * from studentmarks) as s;

-- reduce 6 points from higher mark
update studentmarks
set marks = marks - 6
where marks = (select max(marks) from (select * from studentmarks) as a);

-- add 10+ to the student with the least mark
update studentmarks
set marks = marks + 10
where marks = (select min(marks) from (select * from studentmarks) as r);

select * from studentmarks where marks = (select min(marks) from studentmarks);

SELECT *
FROM StudentMarks;

SELECT *
FROM studentdetails;

select class, roll_no
from studentdetails
where name = 'arjun';

delete from studentmarks 
where (class, roll_no) = 
	(select class, roll_no from studentdetails where name = 'arjun');




