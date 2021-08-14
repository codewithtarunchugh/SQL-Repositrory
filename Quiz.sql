create database QuizDB

use QuizDB

create table Category
(
CategoryId int identity (1,1) primary key,
CategoryName varchar (150)
)

create table Questions
(
QuestionId int identity (1,1) primary key,
CategoryId int foreign key references Category(CategoryId),
Question nvarchar(500),
IsMultiple bit,
IsActive bit
)

create table Options
(
OptionId int identity (1,1) primary key,
QuestionId int foreign key references Questions(QuestionId) ,
OptionName varchar (500)
)

create table Answers
(
AnswerId int identity (1,1) primary key,
QuestionId int foreign key references Questions (QuestionId),
AnswerText varchar (500)
)

create table Users
(
UserId int identity (1,1) primary key,
UserName varchar (150),
LoginTime datetime,
CategoryId int 
)

select * from Users

create table Results
(
ResultId int identity (1,1) primary key,
UserId int foreign key references Users(UserId),
QuestionId int foreign key references Questions (QuestionId),
AnswerText varchar(500)
)

create table Admin
(
AdminId int identity (1,1) primary key,
UserName varchar (500),
UserPassword varchar(500)
)

insert into Admin values ('tarun.chugh','tarun777')
insert into Admin values ('tarun.chugh@gmail.com','tarun777')
select * from admin

insert into Category values ('Math')
insert into Category values ('Science')

select * from Category

select * from Admin
select * from Users
select * from Category
select * from Questions
select * from Answers
select * from Options
select * from results