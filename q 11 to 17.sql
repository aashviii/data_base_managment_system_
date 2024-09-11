drop table salesperson;
drop table customer;


create table salesperson
(sno int not null,
sname varchar(45),
city varchar(45),
comm float,
primary key(sno)
);

select * from salesperson;

INSERT INTO SALESPERSON values(1001,'Peel','London',0.12);
INSERT INTO SALESPERSON values(1002,'Serres','San Jose',0.13);
INSERT INTO SALESPERSON values(1004,'Motika','London',0.11);
INSERT INTO SALESPERSON values(1007,'Rafkin','Barcelona',0.15);
INSERT INTO SALESPERSON values(1003,'Axelrod','New york',0.1);

create table customer
(pk_cnm int not null,
c_name varchar(45),
city varchar(45),
rating int not null,
sno int not null,
foreign key(sno) references salesperson(sno)
);

select * from customer;

INSERT into customer values(201,'Hoffman','London',100,1001);
INSERT into customer values(202,'Giovanne','Roe',200,1003);
INSERT into customer values(203,'Liu','San Jose',300,1002);
INSERT into customer values(204,'Grass','Barcelona',100,1002);
INSERT into customer values(206,'Clemens','London',300,1007); 
INSERT into customer values(207,'Pereira','Roe',100,1004);

select SNAME,CITY FROM salesperson WHERE CITY = 'London' or 'barcelona' and COMM > '.12';
select* from salesperson where comm between 0.11 and 0.13;
select * from customer where RATING > '100' or city = 'Rome';
