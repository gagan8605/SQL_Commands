create database PDEA;
use PDEA;
create table Student(id int primary key,name varchar(20),address varchar(40),mobile bigint );
desc Student;
insert into Student values(101,"Gagan","Pune",8605171209);
Select *from Student_Info;
insert into Student_Info (id,name ,address,mobile,gender,Email) values(109,"Sadhana","Beed",8605789456,"Female","sadhana@gm"),(110,"sakshi","Satara",89562312,"Female","sakshi@gm");
alter table Student add gender varchar(10);
alter table Student_Info change Cid Cid int not Null;

desc Student_Info;
rename table Student  to Student_Info;
truncate Student_Info;
select *from Student_Info where name="Rushi";
insert into Student_Info values(104,"Sagar","Pune",8605451278,"male","sagar@com");
Delete from Student_Info where id=101; 
update  Student_Info set id=101 where id =102;
update  Student_Info set id=102 where id =103;
update  Student_Info set id=103 where id =104;
select  *from Student_Info;
alter table student_info change id id int primary key;
desc Student_Info;
create table Course(Cid int , Cname varchar(20), Cfees float,Cduration int(20));
desc Course;
insert into Course(id,Cname,Cfees,Cduration)values(205,"C++",4000.00,6),(206,"AI/ML",10000.00,8),(207,"Excel",7000.00,3),(208,"PowerBI",4500.00,4);
select * from Course;
alter table Course add Primary Key(Cid);
alter table Student_Info add Cid int;
update  Student_Info set Cid=201 where id =109;
update  Student_Info set Cid=201 where id =110;
update  Student_Info set Cid=202 where id =103;
update  Student_Info set Cid=203 where id =104;
alter table Course change column Cid id int(10);
select Student_Info.name , Student_Info.address ,Student_Info.id ,Course.Cname ,Course.Cfees
from Student_Info inner join Course on Student_Info.Cid = Course.id; 
select *from student_Info inner join Course  where Course.Cname="Java" && Student_Info.gender ="Female" && Student_Info.Cid=201;
-- select distinct cust_city from customer;
select distinct address from Student_Info;
-- select *from customer where cust_city="UK" and Agent_code ="A006";
select *from Student_Info where address="Pune" || Cid ="201";
alter employee add JoiningDate DATE;



