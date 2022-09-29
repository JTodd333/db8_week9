create database business;

use business;

create table employee (
	id int not null auto_increment,
    firstname varchar (50),
    lastname varchar(50),
    phone varchar(50),
    email varchar(255),
    department varchar(8),
    primary key (id),
    foreign key (department) references department(id)
);
/*Jeff tends to not use foreign key in development but in actual
production, because hard to work with editing */


/* deparment from employee and id in department will link, types must match */
create table department (
	id varchar(8) not null,
    name varchar(50),
    location varchar(50),
    primary key (id)
);


insert into department (id, name, location) values ('IT','Information Technology','Grand Rapids');

/* below ID is not needed since auto-incr but adding in for example */
insert into employee(id, firstname, lastname, phone, email, department)
values (50, "Jesse", "Todd", "810-111-1234", "jt@gmail.com", "IT");

/*Cant do because employee in table, you need to delete the employee first
then delete the department */
delete from department where id = 'IT';

select * from employee;

/*deletes table */
drop table employee;


/* With Foreign Keys, create DB, then the 2nd table, then the deparment values, then the employee table
then can insert data. Needs to be specific order with foreign keys */
