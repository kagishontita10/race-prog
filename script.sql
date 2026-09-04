create database Race;
use Race;
create table users(userID int primary key, 
              fullName varchar(20) not null,  
              password varchar(50),role varchar(50) not null, 
              email varchar(50) not null unique); 
 
 
 
create table Events(eventID int primary key,  
userID int not null, foreign key (userID) references users(userID), 
EventName varchar(40) not null,  
description varchar(30),EventDate date not null, 
location varchar(50) not null,eventType varchar(50) not null ); 
 
