DROP TABLE EMPLOYEE1;
drop table incentive;
create table employee1
(employee_id int not null,
first_name varchar(45),
last_name varchar(45),
salary int not null,
joining_date datetime,
department varchar(45),
primary key(employee_id)
);

select * from employee1;


-- alter table employee1 modify joining_date varchar(10);
-- update employee1 set joining_date = datetime_format(joining_date,'%d-%b-%y');
insert into employee1 values(1,'John','Abraham',1000000,'2013-01-01 12:00:00','Banking');
insert into employee1 values(2,'Micheal','Clarke',800000,'2013-01-01 12:00:00','Insurance');
insert into employee1 values(3,'Roy','Thomas',700000,'2013-02-01 12:00:00','Banking');
insert into employee1 values(4,'Tom','jose',600000,'2013-02-01 12:00:00','Insurance');
insert into employee1 values(5,'Jerry','Pinto',650000,'2013-02-01 12:00:00','Insurance');
insert into employee1 values(6,'Philip','Mathew',750000,'2013-01-01 12:00:00','services');
insert into employee1 values(7,'TestName1','123',650000,'2013-01-01 12:00:00','Services');
insert into employee1 values(8,'TestName2','Lname%',600000,'2013-02-01 12:00:00','Insurance');


create table incentive
(employee_ref_id int not null,
Incentive_date date,
Incentive_amount int,
foreign key(employee_ref_id) REFERENCES employee1(employee_id)
);

insert into incentive values(1,'2013-02-13',5000);
insert into incentive values(2,'2013-02-13',3000);
insert into incentive values(3,'2013-02-13',4000);
insert into incentive values(1,'2013-01-13',4500);
insert into incentive values(2,'2013-01-13',3500);

select * from incentive;

alter table incentive modify Incentive_date varchar(10);
update incentive set Incentive_date = date_format(Incentive_date,'%d-%b-%y');

select first_name from employee1;
select First_name,Joining_date,Salary from employee1;
select * from employee1 order by First_name asc; 
select * from employee1 order by Salary desc;
select* from employee1 where first_name like '%j%';
select Department,max(salary) as max_salary from employee1 group by Department order by max_salary asc;
select employee1.first_name,incentive.incentive_amount from employee1
inner join incentive on employee1.employee_id = incentive.employee_ref_id where incentive.incentive_amount > 3000;
create trigger view_table
AFTER INSERT ON employee1 FOR EACH ROW INSERT INTO incentive VALUES(NEW.employee_id, NEW.first_name, NEW.last_name, NEW.department);
