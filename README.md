# collage_database.md

* https://abc_collage_database.in


## features

* user should be able to view students information of abc_collage;

### feature1 to view the students information.

...sql

create table person_info(
        person_id number(10) primary KEY,
        first_name varchar2(10),
        last_name varchar2(10),
        date_of_birth date);
             
            insert into person_info(person_id,first_name,last_name,date_of_birth) values
            (1,'anand','m','21-apr-96');
            insert into person_info(person_id,first_name,last_name,date_of_birth) values
            (2,'vijay','j','22-may-98');
            insert into person_info(person_id,first_name,last_name,date_of_birth) values
            (3,'ram','g','08-sep-96');
            insert into person_info(person_id,first_name,last_name,date_of_birth) values
            (4,'naveen','d','06-sep-98');
            insert into person_info(person_id,first_name,last_name,date_of_birth) values
            (5,'magesh','t','02-aug-99');
             insert into person_info(person_id,first_name,last_name,date_of_birth) values
            (6,'ravi','m','25-may-97');
            insert into person_info(person_id,first_name,last_name,date_of_birth) values
            (7,'vikram','j','22-jun-98');
            insert into person_info(person_id,first_name,last_name,date_of_birth) values
            (8,'suri','g','10-dec-97');
            insert into person_info(person_id,first_name,last_name,date_of_birth) values
            (9,'sandy','d','03-mar-98');
            insert into person_info(person_id,first_name,last_name,date_of_birth) values
            (10,'magi','t','20-aug-96');           
             
             select * from person_info;



### features2  to view student the personal information.

create table student_info(
            student_id number(10) primary key,
            person_id number(10) not null,
            email varchar2(20) not null ,
            constraint student_info_fk1 foreign key(person_id) references person_info(person_id));


insert into student_info(student_id,person_id,email)values(1,1,'anand@mail.com');
insert into student_info(student_id,person_id,email)values(2,2,'vj@mail.com');
insert into student_info(student_id,person_id,email)values(3,3,'ram@mail.com');
insert into student_info(student_id,person_id,email)values(4,4,'navi@mail.com');
insert into student_info(student_id,person_id,email)values(5,5,'magi@mail.com');
insert into student_info(student_id,person_id,email)values(6,6,'ravi@mail.com')
insert into student_info(student_id,person_id,email)values(7,7,'vikram@mail.com');
insert into student_info(student_id,person_id,email)values(8,8,'suri@mail.com');
insert into student_info(student_id,person_id,email)values(9,9,'sandy@mail.com');
insert into student_info(student_id,person_id,email)values(10,10,'magi@mail.com');


select * from student_info;

### feature3 to view the students course details.


        create table course_info(course_id number primary key,
                name varchar2(20) not null,
                teacher varchar2(20) not null);
                
             insert into credit(student_id,course_id,grade,attempt)values(1,1001,'A','3');
             insert into credit(student_id,course_id,grade,attempt)values(2,1002,'C','1');
             insert into credit(student_id,course_id,grade,attempt)values(3,1003,'A','2');
             insert into credit(student_id,course_id,grade,attempt)values(4,1004,'A','2');
             insert into credit(student_id,course_id,grade,attempt)values(5,1005,'C','3');
             insert into credit(student_id,course_id,grade,attempt)values(6,1006,'A','3');
             insert into credit(student_id,course_id,grade,attempt)values(7,1007,'C','1');
             insert into credit(student_id,course_id,grade,attempt)values(8,1008,'A','2');
             insert into credit(student_id,course_id,grade,attempt)values(9,1009,'A','2');
             insert into credit(student_id,course_id,grade,attempt)values(10,1010,'C','3');
            
            
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
             insert into credit(student_id,course_id,grade,attempt)values(5,1005,'C','3');
             insert into credit(student_id,course_id,grade,attempt)values(6,1006,'A','3');
             insert into credit(student_id,course_id,grade,attempt)values(7,1007,'C','1');
             insert into credit(student_id,course_id,grade,attempt)values(8,1008,'A','2');
             insert into credit(student_id,course_id,grade,attempt)values(9,1009,'A','2');
             insert into credit(student_id,course_id,grade,attempt)values(10,1010,'C','3');
            
        
        
        select * from credit
  
  
  
            
            
