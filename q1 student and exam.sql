DROP table exam;

create table STUDENT1
(RollNo INT UNIQUE NOT NULL,
Name varchar(45) not null,
Branch varchar(45),
primary key(RollNo)
);
insert into STUDENT1 values(1,'Jay','Computer Science');
insert into STUDENT1 values(2,'Suhani','Electrical and Com');
insert into STUDENT1 values(3,'Kriti','Electrical and Com');

select * from STUDENT1;

create table Exam
(RollNo int not null,
S_code varchar(10) not null,
Marks int not null,
P_code varchar(5) not null,
foreign key(RollNo) references student1(RollNo)
);

insert into Exam values(1,'CS11',50,'CS');
insert into Exam values(1,'CS12',60,'CS');
insert into Exam values(2,'EC101',66,'EC');
insert into Exam values(2,'EC102',70,'EC');
insert into Exam values(3,'EC101',45,'EC');
insert into Exam values(3,'EC102',50,'EC');

select * FROM Exam


