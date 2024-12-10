create database EmployeeDB
use EmployeeDB


CREATE TABLE Employees (
    PortalId INT PRIMARY KEY IDENTITY(1,1),
    Firstname NVARCHAR(50),
    Lastname NVARCHAR(50),
    Designation NVARCHAR(50),
    Location NVARCHAR(50),
    Mobile NVARCHAR(15)
);


insert into Employees VALUES('Shubham','Kamble','Engineer','Pune',9545879718)
insert into Employees VALUES('Gaurav','Kamble','Designer','Mumbai',7406153419)
insert into Employees VALUES('Anuradha','Gaikwad','Doctor','Benglore',9527228548)
insert into Employees VALUES('Lata','Kamble','Devloper','Nipani',9158301970)

select * from Employees
