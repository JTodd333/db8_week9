use business;

select * from employee where department = 'HR';

create view employeeHR as select * from employee where department = 'HR';
/*behave like a table, used for common tasks too */

select * from employeeHR;

select * from employeeHR where phone like '%111%' order by email;

select * from employee join department on employee.department = department.id;

select employee.*, department.name, department.location from employee join department on employee.department = department.id;

create view employeedetail as select employee.*, department.name, department.location from employee join department on employee.department = department.id;

select * from employeedetail;

select * from employeedetail where department = 'HR';
select firstname, lastname, location from employeedetail order by location;