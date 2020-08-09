create table login(Emailid varchar(50),pass varchar(50));
select *from createaccnt;
select *from login;
alter table login drop uname;
create table createaccnt( userid int   auto_increment primary key  ,uname varchar(50),pass varchar(50),EmailId varchar(50)  not null unique, Org varchar(50));
create table otpreg(email varchar(20));
drop table otpreg;
CREATE INDEX index1 ON createaccnt (Emailid,pass);
CREATE INDEX index1 ON login (Emailid,pass);
select EmailId from createaccnt ;
drop INDEX index1 on createaccnt;
use bala;
select * from admin;
create table admin(email varchar(20),pass varchar(20));
insert into admin(email,pass) 
values("admin@gmail.com","admin123");
select * from complaint;
create table register1(name1 varchar(20),mailid varchar(20),price int,shop varchar(20));
select* from register1;