create Database BookDB

use BookDB

create table Books
(
BookId int identity (1,1) primary key,
BookName varchar (50),
Title varchar (50),
Author varchar (50),
PublishYear int,
BasePrice decimal (18,2) 
)

select * from Books

insert into Books values ('C#','C#','Tarun Chugh',2018,5500.00)
insert into Books values ('Sql Server','Sql Server','Tarun Chugh',2019,5000.00)

