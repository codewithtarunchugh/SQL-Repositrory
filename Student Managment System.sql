create database StudentManagementSystem 
use StudentManagementSystem 

create table course
( 
Id int identity (1,1),
Course  varchar (50),
Duration int)

alter table course
add primary key (Id)

create table batch
(
Id int identity (1,1),
Batch varchar (50),
Year varchar (50)
)

alter table batch
add primary key (id)

select id,batch,year from batch

create table registration
(
Id int identity (1,1),
firstName varchar (50),
LastName varchar (50),
Nic varchar (50),
Course_Id int,
Batch_id int,
Telno int
)


alter table registration
add primary key (Id)

alter table registration
add foreign key (course_ID) references course(Id)


alter table registration
add foreign key (Batch_id) references batch(Id)

 

create table userInfo
(
Id int identity (1,1),
FirstName varchar (50),
Lastname varchar (50),
UserName varchar (50),
Password varchar (50)
)

alter table userInfo
add primary key (Id)


