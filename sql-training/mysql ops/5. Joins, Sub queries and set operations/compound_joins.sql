USE people;

truncate table StudentDetails;
truncate table StudentMarks;

CREATE TABLE StudentDetails(
class TINYINT,
roll_no TINYINT,
name VARCHAR(30),
PRIMARY KEY (class , roll_no)
);

CREATE TABLE StudentMarks(
class TINYINT,
roll_no TINYINT,
marks TINYINT,
PRIMARY KEY (class , roll_no)
);

INSERT INTO StudentDetails(class , roll_no , name)
VALUES (8 , 1 , 'abhinay');

INSERT INTO StudentDetails(class , roll_no , name)
VALUES (8 , 2 , 'suraj');

INSERT INTO StudentDetails(class , roll_no , name)
VALUES (9 , 1 , 'sindhu');

INSERT INTO StudentDetails(class , roll_no , name)
VALUES (10 , 1 , 'arjun');

INSERT INTO StudentMarks(class , roll_no , marks)
VALUES (8 , 1 , 88);

INSERT INTO StudentMarks(class , roll_no , marks)
VALUES (8 , 2 , 46);

INSERT INTO StudentMarks(class , roll_no , marks)
VALUES (9 , 1 , 95);

INSERT INTO StudentMarks(class , roll_no , marks)
VALUES (10 , 1 , 74);

SELECT * FROM StudentDetails SD;
select * from StudentMarks;

-- COMPOUND JOIN 
-- Find the Student name with Highest Marks 
SELECT name , marks
FROM StudentDetails SD
JOIN StudentMarks SM 
		ON  SD.class = SM.class
		AND SD.roll_no = SM.roll_no
ORDER BY marks DESC
LIMIT 1;

/*
Challenge :
	Fetch the roll_no , name and marks of the student who got least marks in class 8 . 
*/
select sd.roll_no, name, marks
from StudentDetails sd
join StudentMarks sm
	on  sd.class = sm.class
	and sd.roll_no = sm.roll_no
    and marks > 50
order by marks 
limit 3;

/*
Challenge :
	Fetch the roll_no , name and marks of the student who got least marks in class 8 . 
*/

SELECT SD.roll_no , name , marks
FROM StudentDetails SD
INNER JOIN StudentMarks SM 
		ON  SD.class = SM.class
		AND SD.roll_no = SM.roll_no
WHERE SD.class = 8
ORDER BY marks
LIMIT 1;