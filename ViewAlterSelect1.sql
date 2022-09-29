use business;

select * from employee e join department d on e.department = d.id;
select e.*, d.name, d.location from employee e join department d on e.department = d.id;
select e.*, d.name as deptname, d.location from employee e join department d on e.department = d.id;

create view employeedetail as
	select e.*, d.name as deptname, d.location from employee e join department d on e.department = d.id;

select * from employeedetail;

select id, firstname, lastname, department from employeedetail order by department, lastname;

select * from employee;

alter table employee add managerid int;
select * from employee;

select distinct location from department;

create view locations as select distinct location from department;

select * from locations;