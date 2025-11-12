-- before using this file, use as folllows: 
-- run before using this: mysql -uroot -pbitnami < create_db.sql
-- usage: mysql -umidterm -pmidterm midterm < populate_midterm.sql

use midterm;

drop database if exists midterm;

create database midterm;

use midterm;

create table employee (
    id int not null auto_increment primary key,
    name varchar(50) not null,
    salary int
);

insert into employee(name, salary) values 
    ('A', 20000), ('B', 30000), ('C', 10000), 
    ('B', 30000), ('A', 20000), ('C', 10000), 
    ('D', 40000), ('C', 10000), ('B', 30000),
    ('E', 50000);

select * from employee;

create table student (
    id int not null primary key,
    name varchar(50) not null,
    gpa decimal(3,2),
    enroll_date date not null,
    major varchar(50)
);

insert into student  values
    (201, 'A', 3.56, '2021-09-01', 'Game Software'),
    (202, 'B', 3.21, '2021-09-01', 'Math'),
    (203, 'C', 1.4,  '2021-09-01', 'Biology'),
    (204, 'D', 4.12, '2021-09-01', 'Chemistry'),
    (205, 'E', 2.78, '2021-09-01', 'Physics'),
    (206, 'F', 4.30, '2021-09-01', 'History'),
    (207, 'G', 4.00, '2021-09-01', 'English'),
    (208, 'H', 3.00, '2021-09-01', 'Math');

create table program (
    student_id int not null,
    program_name varchar(50) not null,
    program_start_date date not null,

    primary key (student_id, program_name),
    foreign key (student_id) references student(id)
);

create table scholarship (
    student_id int not null,
    amount int,
    scholarship_date date not null,

    primary key (student_id, amount, scholarship_date),
    foreign key (student_id) references student(id)
);

insert into scholarship values
    (201, 5000, '2021-10-15'),
    (202, 4500, '2022-08-18'),
    (203, 3000, '2022-01-15'),
    (201, 4000, '2021-10-15');

select * from student;
select * from scholarship;

create table event (
    id int primary key,
    name VARCHAR(100),
    start_time DATETIME,
    end_time DATETIME
);

insert into event values
    (1, 'Event A', '2024-07-11 10:00:00', '2024-07-11 12:00:00'),
    (2, 'Event B', '2024-07-11 11:30:00', '2024-07-11 13:00:00'),
    (3, 'Event C', '2024-07-11 14:00:00', '2024-07-11 15:00:00');


select * from event;


