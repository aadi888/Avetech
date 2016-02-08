drop database avetech;
drop table news;
drop table new;
drop table admin;

create database avetech;

use avetech;

create table news(newsid int primary key,news varchar(400));
insert into news values(1,'admin go to your portal and update it');
insert into news values(2,'admin go to your portal and update it');
insert into news values(3,'admin go to your portal and update it');
insert into news values(4,'admin go to your portal and update it');
insert into news values(5,'admin go to your portal and update it');



create table new(newid int primary key,new varchar(400));
insert into new values(1,'admin go to your portal and update it');
insert into new values(2,'admin go to your portal and update it');
insert into new values(3,'admin go to your portal and update it');
insert into new values(4,'admin go to your portal and update it');
insert into new values(5,'admin go to your portal and update it');


create table admin(adminid int primary key,eventdate varchar(8),eventheadline varchar(36),eventDescription varchar(120));
insert into admin values(1,'21 May','admin update','Admin Go To Your Portal And Update It');
insert into admin values(2,'21 May','admin update','Admin Go To Your Portal And Update It');
insert into admin values(3,'21 May','admin update','Admin Go To Your Portal And Update It');