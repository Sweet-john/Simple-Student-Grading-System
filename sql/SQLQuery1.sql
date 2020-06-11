
create database grading

create table studentaccount(
username varchar(20)  not null,
password varchar(20)  not null
);

create table teacheraccount(
username varchar(20)  not null,
password varchar(20)  not null
);

create table assignment (
aid int not null,
question1 varchar(200),
weight1 decimal(5,3),
question2 varchar(200),
weight2 decimal(5,3),
question3 varchar(200),
weight3 decimal(5,3),
question4 varchar(200),
weight4 decimal(5,3),
question5 varchar(200),
weight5 decimal(5,3)
)

create table answer (
username varchar(20),
aid int ,
answer1 varchar(200),
answer2 varchar(200),
answer3 varchar(200),
answer4 varchar(200),
answer5 varchar(200)
)

create table answergrade (
username varchar(20),
aid int ,
answer1 int,
answer2 int,
answer3 int,
answer4 int,
answer5 int,
comment varchar(200)
)


insert teacheraccount (username,password) values('czy','1234')

insert studentaccount  values('xhy','1234','xhy@qq.com')

insert  assignment values(1,'What is the definition of a database?',0.1,'How to create a table?',0.2,'What is the primary key of table 1?',0.2,'What is the foreign key of table1?',0.2,'How to select the top 1 record in table 1?',0.3)

insert answer values('xhy',1,'Just the literally meanning.','Using create table function in query.','Check the design and you will see.','Check the design and you will see.','Using the select function in query.')

insert answergrade values('xhy',1,100,100,50,50,100,'Your answers are quite impressive.')


