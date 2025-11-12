use midterm;


select * from employee;
select * from student;
select * from scholarship;
select * from event;

-- problem 1

--select major from student;
--select * from student order by name asc, major desc;
--select * from student where gpa >= 4.0 and gpa <= 4.5;
--select count(id) from student where major = 'Game Software';
--select distinct major, count(id) from student group by major order by major desc;

/*select s.name, sc.amount, sc.scholarship_date from student s 
join scholarship sc 
on s.id = sc.student_id; */

/*select s.id from student s 
where s.id not in (select student_id from scholarship);*/

-- select name from student where gpa = (select max(gpa) from student);

-- select major, avg(gpa) from student group by major;

/*update student 
set gpa = 4.0
where major = 'Game Software';*/

-- problem 2

/*select s.name, sum(sc.amount) from student s
left join scholarship sc on s.id = sc.student_id
group by s.name;*/

/*select * from student 
order by gpa desc
limit 4, 1;*/

/*select s.id, s.name from student s 
where s.gpa = (select gpa from student group by gpa having count(*) > 1);*/

/*delete from employee
where id not in  (select min(id) from employee group by name);*/

-- problem 3
/* select e1.name, e2.name from event e1 
join event e2
on e1.id < e2.id and e1.start_time < e2.end_time and e1.end_time > e2.start_time; */

-- problem 4
/*
create table movie (
    id int primary key,
    name varchar(100),
    reward varchar(10)
);

insert into movie values
    (1, 'avengers','yes'),
    (2, 'thor' , 'no'),
    (3, 'ironman', 'yes');

select * from movie;


create table actor (
    id int primary key,
    name varchar(100)
);

insert into actor values
    (1, 'thanos'),
    (2, '서범주'),
    (3, '배병철');

select * from actor;

create table movie_actor (
    id int,
    actor_id int,
    time int,

    primary key (id, actor_id),
    foreign key (actor_id) references actor(id)
);

insert into movie_actor values
    (1, 1, 300),
    (1, 2, 300),
    (1, 3, 300),
    (2, 2, 120),
    (3, 3, 100);

select * from movie_actor;
*/
-- problem 5





      

