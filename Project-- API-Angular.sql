--- Create database, Table, Insert and Select Query
create Database EmployeeDB
use EmployeeDB
create table Department
(
DepartmentID int identity (1,1),
DepartmentName varchar (500)
)

select * from Department

insert into department values
('IT')
insert into department values
('Support')

create table Employee
(
EmployeeID int identity (1,1),
EmployeeName varchar (500),
Department varchar (500),
DateOfJoining date,
PhotoFileName varchar (500)
)

insert into Employee values
('Tarun Chugh','IT','2020-06-04','anonymous.png')

insert into Employee values
('Sam','Support','2020-03-04','anonymous1.png')



select * from Employee
