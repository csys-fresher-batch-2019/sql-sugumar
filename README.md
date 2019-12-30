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
        date_of_birth date)not null;
        ```

```sql
             
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



