
create table installion8(
emp_id varchar2(30) not null,
task_name varchar2(30) not null,
task_deadline date,
task_status varchar2(30),
completed_on date,
constraint ck_8 check(completed_on <= task_deadline));



alter table installion8 add(priority varchar2(10),create_date timestamp default current_timestamp,
modify_date date );


insert into installion8 (emp_id,task_name,task_deadline,task_status,completed_on,priority,modify_date)
values(1,'oracle_installion',to_date('20-12-2019','dd-mm-yyyy'),'success',to_date('19-12-2019','dd-mm-yyyy'),1,to_date('20-12-2019','dd-mm-yyyy'));





