use grocerystore;

select * from product join category on product.category = category = category.id;
/* shortcut way: */
select * from product p join category c on p.category = c.id;

select p.*, c.name, c.description, c.location from product p join category c on p.category = c.id;

select p.*, c.name, c.description, c.location from product p join category c on p.category = c.id
	where price > 1
    order by price;
    
select p.*, c.name, c.description, c.location from product p join category c on p.category = c.id
	where price > 1 and price < 5 and p.category = 'fruit'
    order by price;
    
select p.*, c.name, c.description, c.location from product p join category c on p.category = c.id
	where price > 1 and price < 5 and c.id = 'fruit'
    order by price;
    
select * from product p join category c on p.category = c.id
	where p.category = 'fruit'
	order by price;
    
select * from product p join category c on p.category = c.id
	where p.category = 'fruit' and price.price > 1 and p.price < 5
	order by price;
    
select * from product;
    
update product set price = 1.85 where id = 4;

/* let's increase every price by 20% */
/* in other words, make price 1.2 times its current price */
update product set price = price * 1.2;

