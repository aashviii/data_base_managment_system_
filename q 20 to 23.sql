create table item_mast
(
pro_id int not null,
pro_name varchar(25),
pro_price int,
pro_com int
);

insert into item_mast values(101,'Mother Board',3200.00,15);
insert into item_mast values(102,'Key Board',450,16);
insert into item_mast values(103,'ZIP Drive',250,14);
insert into item_mast values(104,'Speaker',550,16);
insert into item_mast values(105,'Monitor',5000,11);
insert into item_mast values(106,'DVD Drive',900,12);
insert into item_mast values(107,'CD Drive',800,12);
insert into item_mast values(108,'Printer',2600,13);
insert into item_mast values(109,'Refill cartridge',350,13);
insert into item_mast values(110,'Mouse',250,12);

select * from item_mast;

select pro_id,pro_name,pro_price,pro_com from item_mast where pro_price between 200 and 600; 

select avg(pro_price) from item_mast;

alter table item_mast rename column pro_name to Item_Name;

alter table item_mast rename column pro_price to Price_in_RS;

select Item_Name,Price_in_RS from item_mast where Price_in_RS >=250 order by Price_in_RS desc;

select Item_Name,Price_in_RS from item_mast where Price_in_RS >=250 order by Item_Name asc;
