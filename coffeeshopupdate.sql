use coffeeshopprac;

alter table product add column description varchar (200);

/* update customer set contactTitle = 'CEO' where custId = 2; (Example to alter */

select * from product;
update product set description = '16oz in-house roasted coffee.' where id = 2;
update product set description = '20oz in-house roasted coffee.' where id = 3;
update product set description = '16oz cold brew coffee, slow, low temperature brewed coffee served on ice, smooth taste.' where id = 4;
update product set description = '24oz cold brew coffee, slow, low temperature brewed coffee served on ice, smooth taste.' where id = 5;
update product set description = '16oz espresso-based coffee with 1:1:1 ratio of espresso, steamed milk, and foam, served hot.' where id = 6;
update product set description = '20oz espresso-based coffee with 1:1:1 ratio of espresso, steamed milk, and foam, served hot.' where id = 7;
update product set description = '16oz espresso-based coffee with small amount of milk and a foamy top, served hot.' where id = 8;
update product set description = '20oz espresso-based coffee with small amount of milk and a foamy top, served hot.' where id = 9;
update product set description = '16oz espresso-based coffee with espresso, more steamed milk and a foam top, served hot.' where id = 10;
update product set description = '20oz espresso-based coffee with espresso, more steamed milk and a foam top, served hot.' where id = 11;
update product set description = '16oz espresso-based coffee with milk, espresso, and a foam top served over ice.' where id = 12;
update product set description = '24oz espresso-based coffee with milk, espresso, and a foam top served over ice.' where id = 13;
update product set description = 'Sugar or Sugar-Free options of adding various flavors to any of our drinks' where id = 14;
update product set description = 'Almond milk subsitution to any drink or add on to any drink, non-dairy.' where id = 15;
update product set description = 'Oat milk subsitution to any drink or add on to any drink, non-dairy.' where id = 16;

select * from product;