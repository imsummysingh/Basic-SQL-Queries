insert into Demo_1(
Student_ID,
Student_Name,
Country,Contact,
Email,
Sex,PostalCode,Salary) 
VALUES
(1,'Shubham','India',9092752128,'sg1108951@gmail.com','male',201301,'10000');
(2,'Ranjeet','Pakistan',5654657898,'Ranjeet@gmail.com','male',201302,'5000'),
(3,'Summy','China',9078564523,'summy@gmail.com','male',201303,'4500'),
(4,'Mnai','Nepal',9092666128,'mani@gmail.com','male',201308,'6500'),
(5,'Animesh','USA',5672752128,'animesh@gmail.com','male',201306,'4566'),
(6,'Vishal','India',9667752128,'Vishal@gmail.com','female',201309,'8900'),
(7,'Anuj','chile',9092752768,'anuj@gmail.com','female',201304,'2300'),
(8,'Aman','Pakistan',9092572128,'aman@gmail.com','male',201305,'5500'),
(9,'Soomy','India',9092123128,'soomy@gmail.com','female',201300,'4300');

select * from Demo_1;

insert into Demo_1(SL,
Student_ID,
Student_Name,
Country,Contact,
Email,
Sex,PostalCode,Salary) 
VALUES
(1,1,'Shubham','India',9092752128,'shubham@gmail.com','male',201301,'10000');

delete from Demo_1 where Student_ID=1;      

select * from Demo_1;

delete from Demo_1;

select * from Demo_1;

select Country,Sex from Demo_1
where Sex='female';

select Country,Sex from Demo_1
where Sex='female' and Country='India';

select Country,Sex from Demo_1
where Sex='male' and Country='India';

select * from Demo_1
where Sex='male' and Country='India';

select * from Demo_1
order by Country;

select * from Demo_1
order by Country desc;

select * from Demo_1
order by Student_ID;


update Demo_1
set Student_Name='Shubham_gupta',PostalCode=201307
where SL=1;

update Demo_1
set Salary=5600
where SK

update Demo_1
set Student_Name='Sonu';

update Demo_1
set Salary = 4700
where SL=5;

select * from Demo_1;

select Student_ID,Student_Name, Country, Salary*10 AS AnnualSalary
from Demo_1
where Country='India' and Sex='female';

alter table Demo_1
add Salary VARCHAR(20);

select COUNT(Student_Name)
from Demo_1
where Salary > 5000;

select COUNT(Student_Name)
from Demo_1
Group by Country;


select MAX(Salary)
from Demo_1
where Salary=4500
Group by Country;

select COUNT(Student_Name) as count
from Demo_1
Group by Country
Having MAX(Salary) > 5000;

select Email, Country
from Demo_1
Group by Email, Country
Having MAX(Salary) > 2000;


select Email from Demo_1
where Salary > (select top 1 salary from Demo_1
where Salary > 5000);

delete from Demo_1
where Contact=9092752768;

select Email,City from Demo_1;

Alter table Demo_1
add City VARCHAR(20);

select * from Demo_2;

insert into Demo_2 
(State,Address,Designation)
values 
('Rajasthan','NEB','DEVELOPER'),
('TamilNadu','VIT','DEVELOPER'),
('Kerala','abc','TESTER'),
('Haryana','def','SERVICE DESK'),
('Rajasthan','qwerty','TESTER');

delete from Demo_2
where SL=2;



///////JOINS


SELECT * FROM Demo_1 D1 INNER JOIN Demo_2 D2 
ON D1.SL=D2.SL;

SELECT * FROM Demo_1 D1 LEFT JOIN Demo_2 D2
ON D1.SL=D2.SL;

SELECT * FROM Demo_1 D1 LEFT OUTER JOIN Demo_2 D2
ON D1.SL=D2.SL;



select SL from Demo_1
union 
select SL from Demo_2;

select SL from Demo_1
union
select SL from Demo_2;

select SL from Demo_1
union all
select SL from Demo_2;

select COUNT(Student_Name)
from Demo_1
Group by Sex;

select * from Demo_1;

select * from Demo_1
where Salary between 2000 and 7000;

select * from Demo_1
where Country in('India','Pakistan');

select * from Demo_1
where Student_ID between 3 and 6;

select MAX(Salary) from Demo_1
group by Country;

create table Demmo_3
	(
	ID int PRIMARY KEY,
	FirstName varchar(50),
    LastName varchar(50) NOT NULL,
    Age int
	);

select * from Demo_3;

insert into Demo_3(
ID,FirstName,LastName,Age)
values
(1,'Shubham','Gupta',23),
(2,'Summy','Singh',22),
(3,'Rbajeet','Kumar',21),
(4,'Mani','Sah',23),
(5,'Diwid','singh',22);

create table Demo_4
(
DepID  int Primary key,
Name   nvarchar(20),
Address nvarchar(20) unique,
Salary  nvarchar(20),
ID int foreign key REFERENCES Demo_3(ID)
);


select * from Demo_4;
