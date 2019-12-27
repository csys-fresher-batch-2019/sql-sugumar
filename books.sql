create table books(book_id number(30)primary key,
book_name varchar2(30)not null,author varchar2(30)not null,price number(30)not null,
publicer varchar2(30)not null,category varchar2(30)not null,
version varchar2(30),active number(30)not null);

insert into books values(1,'oracle','john',300,'mike','study','1',1);
insert into books values(2,'postgres','victor',500,'smith','study','1',1);
insert into books values(3,'sqldeveloper','mark',6600,'stuart','study','1',1);
insert into books values(4,'mongo','russell',3600,'anderson','study','1',1);
insert into books values(5,'casandra','machiel',7300,'sam','study','1',1);
   
                                                     
                                                                          
                  
    
create table usersorder(order_id number(30),
username varchar2(30) not null,
book_id number(30),
constraint fk1 foreign key(book_id) references books(book_id),
ordered_date timestamp default systimestamp,
delivered_date date ,
amount number(30),
constraint ck_2 check(total_amount>0),
quantity number(30) not null,
status varchar2(30) not null,
comments varchar2(30),total_amount varchar2(30));

insert into usersorder(order_id,username,delivered_date,book_id,total_amount,quantity,status,comments,amount)
values(1,'hope',(sysdate+3),1,300,1,'ordered','not delivered yet',300);               
                  
                                            
                                            
select * from usersorder;
