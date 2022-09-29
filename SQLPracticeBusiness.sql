use business;
select * from employee;

select * from employee where department = 'IT' order by lastname desc;

select * from employee;
select * from department;

select * from employee join department on employee.department = department.id;

/* below is example of only returning specific fields */
select employee.id as employee_id, employee.firstname, employee.lastname, department.name as department_name,
	department.location from employee join department on employee.department = department.id;
/* same but all fields from employee and specified from department*/
select employee.*, department.name, department.location from employee join department on employee.department = department.id;

/* List all employees but only show their first name, last name, and department name */
/* select * from employee join department on employee.department = department.id; 
	starting point exmaple, then filled in below */
select employee.firstname, employee.lastname, department.name from employee join department on employee.department = department.id;

/* all employees who work in IT or ACCT */
select firstname, lastname, department from employee where department = 'IT' or department = 'ACCT' order by department;

/* exercises from sheet */
select * from department;
select distinct department from employee;
select * from employee where lastname like '%oo%';
select * from employee where department = 'IT';
select * from employee order by department, firstname;
insert into employee (firstname, lastname, phone, email, department) 
	values ('Peter', 'Pettigrew', '810-111-1234', 'peterp@hp.com', 'ACCT');

