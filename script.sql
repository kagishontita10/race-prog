create database Race;
use Race;
create table users(userID int primary key, 
              fullName varchar(20) not null,  
              password varchar(50),role varchar(50) not null, 
              email varchar(50) not null unique); 
 
 
