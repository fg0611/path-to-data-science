use people;

create table churn (
RowNumber int,
CustomerId int,
Surname varchar(30),
CreditScore int,
Geography varchar(30),
Gender varchar(10),
Age int,
Tenure int,
Balance float,
NumOfProducts int,
HasCrCard int,
IsActiveMember int,
EstimatedSalary float,
Exited int
);

select * from churn;

alter table churn
drop column RowNumber;

SHOW VARIABLES LIKE "secure_file_priv";

LOAD DATA INFILE "C:\Users\Fili\Desktop\SQL\churn2.csv"
INTO TABLE churn
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select   HasCrCard, IsActiveMember, count(IsActiveMember) from churn
where HascrCard = 1
group by 2;

select IsActiveMember, count(IsActiveMember), Gender from churn
where HasCrCard = 1
group by 1, 3;

select Surname, CreditScore from churn
where CreditScore > 700 and Surname like 'C%';

select Exited, count(Exited) from churn
group by Exited; 

select Geography from churny;

select Exited, count(Exited) from churn
group by Exited; 

select Geography, Exited, count(Exited) as count from churn
group by 1, 2 order by 1, 3; 






