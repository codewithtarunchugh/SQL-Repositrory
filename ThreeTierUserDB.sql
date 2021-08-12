create database UserDB

use userDB


create table Users
(
UserId int identity (1,1) primary key,
UserName varchar (50),
UserAddress varchar (50),
UserEmail varchar (50),
UserMobile varchar (50)
)

