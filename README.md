# collage_database.md

* https://abc_collage_database.in


## features

* user should be able to view students information of abc_collage;

### feature1 to view the students information.

```sql
create table person_info(
        person_id number(10) primary KEY,
        student_name varchar2(10)not null,
        last_name varchar2(10),
        date_of_birth date not null,date_of_joining timestamp default sysdate);
       
             
            insert into person_info(person_id,student_name,last_name,date_of_birth) values
            (1,'anand','m','21-apr-1996');
            insert into person_info(person_id,student_name,last_name,date_of_birth) values
            (2,'vijay','j','22-may-1998');
            insert into person_info(person_id,student_name,last_name,date_of_birth) values
            (3,'ram','g','08-sep-1996');
            insert into person_info(person_id,student_name,last_name,date_of_birth) values
            (4,'naveen','d','06-sep-1998');
                      
             
             select * from person_info;

 person_id| student_name|  last_name| date_of_birth|  date_of_joining                                                
----------------------------------------------------------------------
1	|anand	      |m	 |21-APR-1996     |30-DEC-19 01.43.48.000000000 PM
2	|vijay	      |j	 |22-MAY-1998     |31-DEC-19 03.44.58.000000000 PM
3	|ram	      |g	 |08-SEP-1996     |31-DEC-19 03.43.48.000000000 PM
4	|naveen	      |d	 |06-SEP-1998     |31-DEC-19 01.49.48.000000000 PM




              
              
              
  ```            
### feature2  to view the student's  personal details.
```sql
create table student_info(
            student_id number(10) primary key,
            person_id number(10),
            email varchar2(20) not null ,
            constraint student_info_fk1 foreign key(person_id) references person_info(person_id));


insert into student_info(student_id,person_id,email)values(1,1,'anand@mail.com');
insert into student_info(student_id,person_id,email)values(2,2,'vj@mail.com');
insert into student_info(student_id,person_id,email)values(3,3,'ram@mail.com');
insert into student_info(student_id,person_id,email)values(4,4,'navi@mail.com');


 alter table student_info add(location varchar2(20));
 update student_info set location='chennai' where person_id=1;
 update student_info set location='thiruvallur' where person_id=3;
 update student_info set location='tirchy' where person_id=2;
 update student_info set location='chennai' where person_id=4;
 
 
 
 alter table student_info add(year_of_passing varchar2(20));

update student_info set year_of_passing='2018(may)' where student_id=1
update student_info set year_of_passing='2018(dec)' where student_id=2;
update student_info set year_of_passing='2018(dec)' where student_id=3;
update student_info set year_of_passing='2018(may)' where student_id=4;

 
 
 
select * from student_info;

STUDENT_ID| PERSON_ID| EMAIL|        |location  | year_of_passing
-------------------------------------------------------------
1	|1	    |anand@mail.com  |chennai      |2018(may)
2	|2	    |vj@mail.com     |tirchy       |2018(dec)
3	|3	    |ram@mail.com    |thiruvallur  |2018(dec)
4	|4	    |navi@mail.com   |chennai      |2018(may)

 ```
### feature3 to view the students course information.
```sql

        create table course_info(course_id number primary key,
               course_name varchar2(20) not null,student_name varchar2(10)not null,
                staff_name varchar2(20) not null);
                
                
          insert into course_info(course_id,course_name,student_name,staff_name)values(1001,'BA','anand','kevin');
          insert into course_info(course_id,course_name,student_name,staff_name)values(1002,'BCA','vijay','raj');
          insert into course_info(course_id,course_name,student_name,staff_name)values(1003,'MCA','ram','mercy');
          insert into course_info(course_id,course_name,student_name,staff_name)values(1004,'M.TECH','naveen','kaushik');
          
          select * from course_info;
        
          
         
            select * from course_info;
            
            alter table course_info add(fees_info number(20));
           
            update course_info set fees_info=50000 where course_id=1004;
            update course_info set fees_info=25000 where course_id=1003;
            update course_info set fees_info=30000 where course_id=1002;
            update course_info set fees_info=35000 where course_id=1001;
            
            alter table course_info add(job_status varchar2(20));

update course_info set job_status='placed' where course_id=1001;
update course_info set job_status='not placed' where course_id=1002;
update course_info set job_status='placed' where course_id=1003;
update course_info set job_status='placed' where course_id=1004;

            
            
 cousre_id| course_name| staff_name|  fees_info|student_name| job_status|
------------------------------------------------------------------------
1001	 |BA	         |kevin        |35000  |anand        |placed
1002	 |BCA	         |raj          |30000  |vijay        |not placed
1003	 |MCA	         |mercy        |25000  |ram          |placed
1004	 |M.TECH	 |kaushik      |50000  |naveen       |placed  
            
            
            


 select * from course_info;
 ```
  ### feature4 to view the results of the students.
  ```sql
  
create table credit(student_id number,
        course_id number(20),
        attempt varchar2(4),
        constraint credit_student_id_fk2 foreign key(student_id) references student_info(student_id),
        constraint credit_course_fk foreign key(course_id) references course_info(course_id));
        
        
             insert into credit(student_id,course_id,attempt)values(1,1001,'1');
             insert into credit(student_id,course_id,attempt)values(2,1002,'2');
             insert into credit(student_id,course_id,attempt)values(3,1003,'2');
             insert into credit(student_id,course_id,attempt)values(4,1004,'1');
            
        
 
 alter table credit add(CGPA decimal(10,2));

update credit set cgpa=6.2 where course_id=1001;
update credit set cgpa=7.1 where course_id=1002;
update credit set cgpa=6.5 where course_id=1003;
update credit set cgpa=7.7 where course_id=1004;

select * from credit

alter table credit add(CGPA varchar2(20));

alter table credit add(grade varchar2(10),constraint ck1 check (grade in('A','b','C')));

update credit set cgpa=5.1 where student_id=3;

student_id |course_id |cgpa     |attempt |grade
--------------------------------------------------
1	  |1001	      |8.1	      |1  |A    
2	  |1002	      |6.1	      |2  |C   
3	  |1003	      |6.5	      |2  |C    
4	  |1004	      |8.7	      |1  |A    

        
  
```
###secnario
```

1.select p.student_name,c.course_name,cr.cgpa,p.person_id from course_info c,credit cr,person_info p where 
p.person_id = cr.student_id and c.course_id = cr.course_id 
and p.person_id=1;

|student_name|person_id|course_name|person_id
-------------------------------------------------
|anand	     |BA	       |8.2	  |1  

2.to check wheather the got placed.

select count(job_status) from course_info where job_status='placed';

count(status)
--------------
2


3.number of attempts they where taken to clear.

select count(attempt) from credit where attempt='2'
count(attempt)
----------------
2

4.eligibility check.

select p.student_name,c.course_name,cr.cgpa,p.person_id from course_info c,credit cr,person_info p where 
p.person_id = cr.student_id and c.course_id = cr.course_id 
and cgpa>7
student_name|course_name|cgpa|person_id
----------------------------------------
anand	     | BA	|8.2	|1
vijay	     |BCA	|7.1	|2
naveen	     |M.TECH	|7.7	|4

5.to check the locations;

select * from student_info where location='chennai';

student_id|person_id|email|location|year_of_passing|
--------------------------------------------------
|1	|1	|anand@mail.com	|chennai	|may(2018)
|4	|4	|navi@mail.com	|chennai	|may(2018)

6.the procedure to update grade.

create or replace procedure cgpa(stu_id in number)
as v_check decimal;
begin
select cgpa into v_check from credit where student_id=stu_id;
if(v_check<=6 and v_check>=5)then
update credit set grade='C' where student_id=stu_id;
else if (v_check<=7 and v_check>6) then
update credit set grade='B' where student_id=stu_id;
else
update credit set grade='A' where student_id=stu_id;
end if;
end if;
commit;
end cgpa;

to run the procedure.

declare
begin
cgpa(3);
end;


7.to check for the age of the student.
 select student_name,floor((sysdate-DATE_OF_BIRTH)/365.25) as Age from person_info;

student_name|AGE|
-----------------
|anand	   |23
|vijay	   |21
|ram	   |23
|naveen	   |21

