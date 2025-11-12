use mysql;
drop user if exists 'midterm'@'localhost';
create user 'midterm'@'localhost' identified by 'midterm';
select User,Host from user where User='midterm';
flush privileges; -- please don't forget to add the following command
drop database if exists midterm;
select '' as 'show databases';
show databases;

create database midterm;
grant all on midterm.* to 'midterm'@'localhost';
flush privileges;
select '' as 'show newly created databases';
show databases;