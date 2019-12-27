create table books(book_id number(30)primary key,
book_name varchar2(30)not null,author varchar2(30)not null,price number(30)not null,
publicer varchar2(30)not null,category varchar2(30)not null,
version varchar2(30),active number(30)not null);


insert into books values(1,'oracle','john',300,'mike','study','1',1);
insert into books values(2,'postgres','victor',500,'smith','study','1',1);
insert into books values(3,'sqldeveloper','mark',6600,'stuart','study','1',1);
insert into books values(4,'mongo','russell',3600,'anderson','study','1',1);
insert into books values(5,'casandra','machiel',7300,'sam','study','1',1);
