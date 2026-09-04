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
 
create table weather(weatherID int primary key, 
eventID int, foreign key (eventID) references events(eventID),  
temperature decimal(5,2) null, rainProbability decimal(5,2)); 
 
create table categories(categoryID int primary key, 
eventID int not null, foreign key (eventID) references events(eventID),  
categoryType varchar(50), age int not null); 
 
create table eventRoute(routeID int primary key,  
eventID int  not null, foreign key (eventID) references events(eventID), 
routeName varchar(50) not null, distance decimal(6,2) not null); 
 
create table Enrolments(enrolmentID int primary key,  
userID int not null, foreign key (userID) references users(userID), 
eventID int  not null, foreign key (eventID) references events(eventID), 
categoryID int not null , foreign key (categoryID) references categories(categoryID), 
enrolmemtDate DATE NOT NULL, status varchar(20)); 
 
create table Results(resultID int primary key,  
enrolmentID int not null, foreign key (enrolmentID) references enrolments(enrolmentID), 
finishTime time not null,position int, recordedeAT DATETIME DEFAULT  getdate()); 
insert into users(userID, fullName, password, role, email) 
values(1,'Thabang Nkosi','Thabang123', 'organiser', 'Thabang@gmailcom'), 
      (2,'Comi Nzola','Nzola@25','organiser','Nzola@gmail.com'), 
      (3,'sama nkosi','sama456','participant','sama@gmail.com'), 
      (4,'kamo Liza','kamo134','participant','kamoL@gmail.com'); 
  
insert into users(userID, fullName, password, role, email) 
values(1,'Thabang Nkosi','Thabang123', 'organiser', 'Thabang@gmailcom'), 
      (2,'Comi Nzola','Nzola@25','organiser','Nzola@gmail.com'), 
      (3,'sama nkosi','sama456','participant','sama@gmail.com'), 
      (4,'kamo Liza','kamo134','participant','kamoL@gmail.com'); 
 insert into Events(eventID, userID, EventName, description, EventDate, location, eventType) 
values(1,1,'Tembisa fun run','community running event','10 october 2026','Tembisa','Running'), 
      (2,2,'Soweto Marathon','Annual marathon event','15 november 2026','soweto','marathon'), 
      (3,1,'pretoria cycle race','road cycle event','5 December 2026','pretoria','cycling'); 
 insert into weather(weatherID, eventID,temperature,rainProbability) 
values(1,1,24.50,10.00), 
      (2,2,21.00,20.00), 
      (3,3,26.00,15.00); 

insert into categories(categoryID,eventID,categoryType,age) 
values(1,1,'5km',18), 
      (2,1,'10km',18), 
      (3,2,'half marathon',18), 
      (4,2,'full marathon',18), 
      (5,3,'20km cycling',18), 
      (6,3,'40km cycling',18); 
 
 insert into eventRoute(routeID,eventID, routeName, distance) 
values(1,1,'tembisa community route',5.00), 
      (2,2,'soweto marathon route', 42.20), 
      (3,3,'pretoria cycling route',40.00); 
 
insert into Enrolments(enrolmentID,userID,eventID,categoryID,enrolmemtDate, status) 
values(1,3,1,1,'2026-09-01','Active'), 
      (2,4,1,2,'2026-09-02','Active'), 
      (3,3,2,3,'2026-09-03','Active'), 
      (4,4,3,5,'2026-09-04','Active'); 

insert into Results(resultID, enrolmentID, finishTime,position) 
values(1,1,'00:32:15',5), 
      (2,2,'00:58:20',12), 
      (3,3,'01:45:30',8); 
 
