# collage_database.md

* https://abc_collage_database.in


## features

* user should be able to view students information of abc_collage;

### feature1 to view the students information.

```sql

create table person_info(
        person_id number(10) primary KEY,
        first_name varchar2(10)not null,
        last_name varchar2(10),
        date_of_birth date not null);
        ```

```sql
             
            insert into person_info(person_id,first_name,last_name,date_of_birth) values
            (1,'anand','m','21-apr-1996');
            insert into person_info(person_id,first_name,last_name,date_of_birth) values
            (2,'vijay','j','22-may-1998');
            insert into person_info(person_id,first_name,last_name,date_of_birth) values
            (3,'ram','g','08-sep-1996');
            insert into person_info(person_id,first_name,last_name,date_of_birth) values
            (4,'naveen','d','06-sep-1998');
                      
             
             select * from person_info;

 person_id| first_name|  last_name| date_of_birth|                                                 
-------------------------------------------------
1	|anand	      |m	 |21-APR-1996     |
2	|vijay	      |j	 |22-MAY-1998     |
3	|ram	      |g	 |08-SEP-1996     |
4	|naveen	      |d	 |06-SEP-1998     |

              
              
              
              
### features2  to view student the personal information.

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
 
select * from student_info;

STUDENT_ID| PERSON_ID| EMAIL|      |location|
--------------------------------------
1	|1	    |anand@mail.com  |chennai
2	|2	    |vj@mail.com     |tirchy
3	|3	    |ram@mail.com    |thiruvallur
4	|4	    |navi@mail.com   |chennai


### feature3 to view the students course details.


        create table course_info(course_id number primary key,
               course_name varchar2(20) not null,
                staff_name varchar2(20) not null);
                
          insert into course_info(course_id,course_name,staff_name)values(1001,'BA','kevin');
          insert into course_info(course_id,name,teacher)values(1002,'BCA','raj');
          insert into course_info(course_id,name,teacher)values(1003,'MCA','mercy');
          insert into course_info(course_id,name,teacher)values(1004,'M.TECH','kaushik');
        
          
         
            select * from course_info;
            
            alter table course_info add(fees_info number(20)not null);
            update course_info set fees_info=50000 where course_id=1004;
            update course_info set fees_info=25000 where course_id=1003;
            update course_info set fees_info=30000 where course_id=1002;
            update course_info set fees_info=35000 where course_id=1001;
            
 cousre_id| course_name| staff_name|  fees_info|
-----------------------------------------------
1001	 |BA	         |kevin        |35000 |
1002	 |BCA	         |raj          |30000 |
1003	 |MCA	         |mercy        |25000 |
1004	 |M.TECH	 |kaushik      |50000 |

 select * from course_info;
 
  ### feature4 to view the results of the student.
  
create table credit(student_id number,
        course_id number(20),
        grade varchar2(5) not null,
        attempt varchar2(4),
        constraint credit_student_id_fk2 foreign key(student_id) references student_info(student_id),
        constraint credit_course_fk foreign key(course_id) references course_info(course_id));
        
        
              insert into credit(student_id,course_id,grade,attempt)values(1,1001,'A','3');
             insert into credit(student_id,course_id,grade,attempt)values(2,1002,'C','1');
             insert into credit(student_id,course_id,grade,attempt)values(3,1003,'A','2');
             insert into credit(student_id,course_id,grade,attempt)values(4,1004,'A','2');
            
        
 select * from credit;
        
 student_id |course_id|grade|attempt|
------------------------------------
1	  |1001	     |A	   |3      |
2	  |1002	     |A	   |1      |
3	  |1003	     |A	   |2      |
4	  |1004	     |A	   |2      |

        
  
