SELECT * FROM hibernate.todoapp;
create table todoapp (id int, title varchar(300), notes varchar(8000), date varchar(200));
insert into todoapp values(3,'mahacheck','notemahacheck','datecheck');
truncate hibernate.todoapp;