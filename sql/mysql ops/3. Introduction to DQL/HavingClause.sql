USE people;

-- Q1.  fetch all the country names and their average salaries of citizens whose average salary should be greater than 300000 units . 
select country, avg(salary) from citizen
where gender = 'Female' and country = 'china'
group by country;

-- select * from sql-developer-327317.churn.churn;

select * from citizen;

SELECT country, gender, AVG(salary)
FROM Citizen
group by country
having gender = 'Female'
order by 3;

-- Let's solve the same challenge using “HAVING”

SELECT country , AVG(salary) as avg_salary
FROM Citizen
GROUP BY country
HAVING AVG(salary) > 300000
ORDER BY 2;

/*
Challenge
	fetch the gender and their respective average salary from the citizen table whose average salary should be 
	greater than 400000 units and all the records are to be sorted in descending order . 
*/

SELECT gender , AVG(salary) as avg_salary
FROM Citizen
GROUP BY gender 
HAVING AVG(salary) > 400000
ORDER BY 2 DESC;

select country, gender, count(gender) as g from citizen
group by country;

select country, gender, count(gender) as g from citizen
group by 1, 2;

select country, gender, first_name, count(gender) from citizen
where country = 'Argentina'
group by gender;


/*
Homework 
	Fetch the gender that earns the maximum salary from the Citizens table . 
	HINT - Use LIMIT to fetch the 1st record after sorting in Descending order .
*/