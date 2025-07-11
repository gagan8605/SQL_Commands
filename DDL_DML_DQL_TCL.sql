Create database ddl;
use ddl;
create table student ( name varchar(100), roll_no int , address varchar(100) , email varchar(100));
desc student;
select * from student;
insert into student values ( "Gagan",12 , " Pune ", "gagan@gmail.com");

insert into student(name , roll_no,address,email)values("Ram", 13,"Mumbai","ram@gmail.com"),("Laxman",14,"Thane","laxman@gmail.com");

select name , roll_no,COUNT(*) from student where roll_no >=13  group by name , roll_no ORDER by name asc ;

-- update student set roll_no = 16 where name IN ( SELECT name  from student where roll_no = 15);
-- error - You can't specify target table 'student' for update in FROM clause

Delete from student where roll_no = 15;

-- DRCAT - drop , rename , create , alter , truncate 
-- create is done
-- demo table to drop 
create table Teachers(teacher_name varchar(100) , Dept varchar(100) , address varchar(100));
-- rename
-- alter 

alter table student rename to Student_info;
alter table student_info rename column name to stud_name;

alter table Student_info add marks float ; 

alter table Student_info modify column marks int;

-- drop ( teachers)

drop table Teachers;

-- truncate 
truncate table Student_info;

desc  Student_info;
select * from Student_info;

insert into student_info(stud_name , roll_no,address,email,marks)values("Ram", 13,"Mumbai","ram@gmail.com",86),("Laxman",14,"Thane","laxman@gmail.com",96);

--  DML
-- SUDI- : select  , Update , delete , insert 

-- update
update student_info set marks = 99 where roll_no = 13;

update student_info set marks = 100 , email="lucky@gmail.com" where roll_no = 14;

-- insert 

insert into student_info values("hanuman dada" , 5 , "india","sri@gmail.com", 89);

-- delete
delete from student_info where roll_no = 14 and stud_name ="Laxman";
--

-- DQL 
-- select 

select count(*) from student_info ; -- retrieve total numbers of rows 

select  Count(*) , avg(marks) as avg_marks from student_info group by marks ;

-------- DCL 
-- grant and revoke

-- GRANT 
-- grant select , update on student_info to root;
-- 	Error Code: 1410. You are not allowed to create a user with GRANT

-- TCL 

-- BEGIN TRANSACTION ;
-- update student_info set marks = 86 where name = "Ram" ;
-- savepoint before_update ;
-- rollback to savepoint before_update;
-- commit; 





