--Create
CREATE TABLE Employees (  
    EmpID INT identity(1,1) PRIMARY KEY,  
    Name VARCHAR(100) NOT NULL,  
    Age INT,  
    DeptID INT  
);

--Insert Into
insert into  Employees values('A',20,101)
insert into  Employees values('B',21,106)
insert into  Employees values('C',24,102)
insert into  Employees values('D',34,105)
insert into  Employees values('E',40,105)
insert into  Employees values('F',30,102)

--Select
SELECT Name, Age  
FROM Employees;

--Where
select Name, Age  from Employees  
where Age > 30;

--Like
Select Name from Employees  
where Name like 'A%'; 

--Order By
Select Name, Age  from Employees  
order by Age DESC;
