create table task_1 (user_id number(10),task_name varchar2(20),
gmail_id varchar2(20),password varchar2(10),salary number(30));
insert into task_1(user_id,task_name,gmail_id,password,salary)values(1,'java','suri@gmail.com','1234',2000);
insert into task_1(user_id,task_name,gmail_id,password,salary)values(2,'oracle','s@gmail.com','234',1000);
insert into task_1(user_id,task_name,gmail_id,password,salary)values(3,'oracle','si@gmal.com','1234',9000);
insert into task_1(user_id,task_name,gmail_id,password,salary)values(4,'postgres','s@gmail.com','234',24000);
insert into task_1(user_id,task_name,gmail_id,password,salary)values(5,'mysql','sri@gmal.com','1234',2000);

select * from task_1;
select user_id,max(salary) from task_1;

                                                          
