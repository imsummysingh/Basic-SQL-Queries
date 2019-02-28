create database sqldb;

create table demo1(Id int identity(1,1),FirstName nvarchar(50),LastName nvarchar(50),Branch nvarchar(50),Contact nvarchar(50),Salary nvarchar(50));

select * from demo1;

insert into demo1 values('summy','singh','cse',9825468669,25000),('sunny','singh','cse',8275622050,125000),('ranjit','kumar','ece',1234567898,26000)
	,('shubham','gupta','ece',2345615243,27900),('vishal','vaibhav','instrument',9825468669,22000),('supriya','singh','cse',9825468669,20000);

insert into demo1 values('mani','sah','ece',8765432219,30000);

select * from demo1;

select * from demo1 where branch='cse';

select * from demo1 where salary>26000;

select distinct branch from demo1;

select distinct salary from demo1;

select * from demo1 where salary>25000 AND branch='cse' AND LastName='singh';

select * from demo1 where salary>25000 AND branch='cse' OR LastName='singh';

select * from demo1 where salary>25000 OR branch='cse' AND LastName='singh';

select * from demo1 where NOT salary>25000;

select * from demo1 order by salary;

select * from demo1 order by FirstName;

select * from demo1 order by FirstName,LastName;

select * from demo1 order by salary desc;

update demo1 set branch='ece' where id=4;

update demo1 set Contact=9827543524 where id=11;

select * from demo1;

update demo1 set Contact=7827532124 where id=12;

delete from demo1 where id=6;

delete from demo1;

select top 3 * from demo1;

select top 3 * from demo1 where branch='cse';

select MIN(salary) from demo1;

select MAX(salary) from demo1;

select MIN(salary) from demo1 where branch='cse';

select MAX(salary) from demo1 where branch='cse';

select MIN(salary) AS minimumsalary from demo1 where branch='cse';

select count(salary) from demo1;

select count(salary) from demo1 where branch='cse';

select avg(Id) from demo1;

select SUM(Id) from demo1;

select * from demo1 where FirstName Like 's%';

select * from demo1 where branch in ('cse','ece');

select * from demo1 where branch IN (select branch from demo1);

select * from demo1 where salary Between 25000 AND 130000;

select * from demo1 where salary not Between 25000 AND 130000;

select salary as pagad from demo1;

select * from demo1;

create table demo2(Id int identity(7,1),MiddleName nvarchar(50),City nvarchar(50),Age Int, Pincode nvarchar(50),Gender nvarchar(10));

select * from demo2;

insert into demo2 values('Kumar','Daman',22,396210,'male'),('Kumar','Daman',25,396210,'male'),('Garg','Bihar',23,123434,'Female'),('Abcd','Alwar',22,234567,'Male')
,('Kumari','UP',24,345678,'male'),('Kumar','Jharkhand',22,234567,'Female');

select * from demo2;

select demo1.FirstName , demo2.City 
From demo1
INNER JOIN demo2 ON demo1.id=demo2.id;

select demo1.FirstName , demo2.City 
From demo1
LEFT JOIN demo2 ON demo1.id=demo2.id;

select demo1.FirstName , demo2.City 
From demo1
RIGHT JOIN demo2 ON demo1.id=demo2.id;

select demo1.FirstName , demo2.City 
From demo1
FULL OUTER JOIN demo2 ON demo1.id=demo2.id;

select demo1.FirstName , demo2.City 
From demo1
CROSS JOIN demo2;

select FirstName from demo1
UNION
Select Middlename from demo2
order by FirstName;

select FirstName from demo1
UNION ALL
Select Middlename from demo2;

select Branch from demo1 GROUP BY Branch;

select COUNT(Branch) from demo1 GROUP BY Branch;

select count(branch) from demo1 group by branch having count(branch)>2;

select branch from demo1 group by branch having count(branch)>=3;

select FirstName from demo1 where EXISTS (Select LastName from demo1 where id=demo1.id and salary>25000);

select firstname from demo1 where id = any(select id from demo2 where id=8);

select firstname from demo1 where id = all(select id from demo2 where id=8);

select * into demo3 from demo1;

select * from demo3;

select FirstName, salary, 
case 
	WHEN salary>25000 THEN 'Salary is greater than 25k'
	WHEN salary=25000 THEN 'Salary is 25k'
	ELSE 'salary is less than 25k'
End AS SalaryText
from demo1;

alter table demo1 add email nvarchar(50);

select * from demo1;

alter table demo1 drop column email;
