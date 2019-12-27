create table books(book_id number not null,
book_name varchar2(20) not null,
author_name varchar2(20) not null,
price number not null,
publisher varchar2(20) not null,
version number,
categories varchar2(50) not null,
active number,
constraint book_id_pk primary key (book_id),
constraint price_ck check(price>=0),
constraint always_uq unique(book_name,author_name,version)
);



create table orders(order_id number not null primary key,
username varchar2(20) not null, book_id number not null,
ordered_date timestamp not null, deliverd_date timestamp,
total_amount number not null,Quantity number not null,
status varchar2(20) default 'Ordered',
constraint book_id_fk foreign key(book_id) references books(book_id),
constraint quantity_ck check(quantity>0),
constraint total_amount_ck check(total_amount>=0),
constraint always_uniq unique(username,book_id,ordered_date)
);


insert into books(book_id,book_name,author_name,price,publisher,version,categories,active)
values(1,'DBMS','Rudyard',750,'stalin',1,'Computer Science',1);

insert into books(book_id,book_name,author_name,price,publisher,version,categories,active)
values(2,'Code Complete','Steve',300,'Aravind',1,'Computer Science',1);


insert into books(book_id,book_name,author_name,price,publisher,version,categories,active)
values(3,'Vikram Vedha','Aalu',10,'story teller',1,'Story',1);


create sequence order_id_seq start with 101 increment by 1;

insert into orders(order_id,username, book_id,ordered_date,total_amount,Quantity,status)
values(order_id_seq.nextval,'Vikram',1,sysdate,1500,2,'Pending');

insert into orders(order_id,username, book_id,ordered_date,total_amount,Quantity)
values(order_id_seq.nextval,'Rahu',2,sysdate,600,2);

insert into orders(order_id,username, book_id,ordered_date,total_amount,Quantity,status)
values(order_id_seq.nextval,'Jey',3,sysdate,100,10,'Delivered');


insert into orders(order_id,username, book_id,ordered_date,total_amount,Quantity)
values(order_id_seq.nextval,'Jey ram',2,sysdate,620,4);


select * from orders order by order_id;

select * from books order by book_id;

update orders set status = 'Delivered' where order_id = 101 and status = 'Pending';

update orders set deliverd_date = sysdate where order_id = 101 and status = 'Delivered';

select * from orders;

select sum(total_amount) as Sale_of_the_day from orders;



create table order_items( order_item number not null primary key,
order_id number not null,book_id number not null,
quantity number not null, status varchar2(20) not null,
constraint order_id_fk foreign key(order_id) REFERENCES orders(order_id),
constraint bookid_fk foreign key (book_id) references books(book_id)); 

select * from books;



create table book_stock(stock_id number not null,
book_id number not null,quantity number,constraint book_fk foreign key (book_id) references books(book_id));

insert into book_stock(stock_id,book_id,quantity)values(1,1,10);

insert into book_stock(stock_id,book_id,quantity)values(2,2,5);

describe table orders;



select * from books;

select * from orders;

select * from order_items;

select * from book_stock;

insert into order_items(order_item,order_id,book_id,quantity,status)
values(1,101,1,3,'Ordered');


insert into order_items(order_item,order_id,book_id,quantity,status)
values(2,102,1,5,'Ordered');


insert into order_items(order_item,order_id,book_id,quantity,status)
values(3,102,2,3,'Ordered');

select * from order_items;

insert into book_stock(stock_id,book_id,quantity)
values(1,1,10);


insert into book_stock(stock_id,book_id,quantity)
values(2,2,5);

select * from book_stock;

select quantity from book_stock where book_id = 1;

select sum(quantity)from order_items where book_id = 1;

select * from order_items;

select * from books;

select book_name,(select sum(quantity) from order_items where book_id = b.book_id) as Quantity_ordered from books b;

select * from book_stock;

select book_name,(select sum(quantity) from book_stock where book_id = b.book_id)from books b;
