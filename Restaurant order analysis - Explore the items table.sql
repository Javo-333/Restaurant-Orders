USE restaurant_db;

-- 1.) view menu items table
select * from menu_items;

-- 2.) find the number of menu items
select count(*) from menu_items;

-- 3.) what are the least and most expensive menu items?
select * from menu_items
order by price;

select * from menu_items
order by price desc;

-- 4.) how many italian dishes are on the menu?
select count(*) from menu_items
where category = 'Italian';

-- 5.) what are the least and most expensive italian dishes on the menu? 
select * from menu_items
where category = 'Italian'
order by price;

select * from menu_items
where category = 'Italian'
order by price desc;

-- 6.) how many dishes are in each category?

select category, count(menu_item_id) as num_dishes from menu_items 
group by category;

-- 7.) what is the average dish price of each category?
select category, avg(price) as avg_price
from menu_items
group by category;