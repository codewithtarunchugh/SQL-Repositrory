create database RestaurantDB
use RestaurantDB

create table Customer
(CustomerId int identity (1,1) primary key,
CustomerName varchar (50)
)


insert into Customer values ('Customer A')
insert into Customer values ('Customer B')
insert into Customer values ('Customer C')
insert into Customer values ('Customer D')
insert into Customer values ('Customer E')
select * from Customer


create table Items
(
ItemId int identity (1,1) primary key,
ItemName varchar (50),
ItemPrice decimal (18,2)
)


insert into Items values ('Apple',50.00)
insert into Items values ('Orange',70.00)
insert into Items values ('Pizza',450.00)
insert into Items values ('Burger',150.00)
insert into Items values ('Noodles',80.00)
insert into Items values ('Rice',50.00)
insert into Items values ('French Fries',60.00)
select * from Items


Create table PaymentType
(
PaymentTypeId int identity (1,1) primary key,
PaymentTypeName varchar (50)
)

insert into PaymentType values ('Cash')
insert into PaymentType values ('Credit')
select * from PaymentType
