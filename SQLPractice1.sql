use northwind;
select * from customer;
select * from supplier where postalCode='10023';
select * from supplier order by postalCode;
select * from supplier order by country;
select * from supplier where country = 'France';
select * from orderdetail;
delete from orderdetail where orderDetailId = 1000;
update customer set contactTitle = 'CEO' where custId = 2;

insert into customer (companyName, contactName, contactTitle, city, country)
	values ('Rocket Mortgage', 'Franklin, Fred', 'Sales Rep', 'Detroit', 'USA');
    
select * from customer order by country desc;
select * from customer order by country, contactName desc;
select * from customer order by country desc, contactName;

select distinct country from customer order by country;
/* this is a comment */
select contactName, country from customer;

select count(*) from customer;
/* returns the number 92 */

select count(*) from customer where country = 'Brazil';

/*We do a "query" to get data from the table */
/*To limit the fields we get back, we use a "where clause" with a condition. */
/*To order the result set we get back, we use an order by clause */
select companyName, contactName from customer where country = 'Brazil' order by contactName;
/* What we get back is called a "result set". */
/*The stuff that's actually stored in the database is just called "data". */
/* There is no guarantee on the order of the data coming in or the prder of the field names. */
/* We can specify an order through order by. And we access fields in our C# code by name. */

select * from customer where postalCode in ('10046', '10104', '10064'); /*This is called "in" operator */
select * from customer where postalCode = '10046' or postalCode = '10104' or postalCode = '10064';
/* these are the same thing, 1st just cleaner */

select * from category;
select * from category where categoryName like 'Con%';
/*All that start with "Con" */

select * from category where description like '%ees%';
/* returns everything containing "ees" in the description */

select * from category limit 3;
/* above is not specific enough to guarantee an order. Below is better */
select * from category  order by categoryName limit 3;

select * from customer order by country, city;

/* #10 from SQL lab */
select * from orderdetail where quantity = 1;
delete from orderdetail where quantity = 1;

select * from employee where mgrId = 5;
/* All employees that report to manager Id 5, Sven */