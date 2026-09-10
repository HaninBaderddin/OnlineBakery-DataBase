use OnlineBakery;
--1
select c.Fname , c.Mname , c.Lname , f.details
from Customer as c , Orders as o ,Cake_Price as p , Cake as f
where o.price_id = p.Price_ID and p.Cake_ID = f.Cake_ID and c.System_ID = o.Customer_ID and f.Cake_ID = 1;

--3
select * from Chef_Rating;
select * from Chef;
use OnlineBakery;
select c.Fname , c.Mname , c.Lname , r.Rating_Over_5
from Chef as c , Chef_Rating as r
where r.Chef_SSN = c.SSN and r.Rating_Over_5 = (select min(c.Rating_Over_5) from Chef_Rating as c);

--5
select Fname , Lname , number_of_orders from Customer where Fname like '%Jamal%' and Lname like '%Sami%';

--9
select Fname , Lname , join_date from Customer where year(join_date) = 2013;

--10
use OnlineBakery;
select year(order_date),sum(Quantity) 
from Orders
group by year(order_date);

--4
select month(order_date) , sum(quantity) from Orders group by month(order_date)
having sum(quantity) >= all
(select sum(quantity) from orders group by month(order_date));

--7
use OnlineBakery;
select order_date ,sum(Quantity) from orders group by order_date having order_date =
(select order_date from orders where order_date = '2012-08-05'); --2012-08-05 instead of 1/10/2012

--6
select distinct c.Fname, c.Mname, c.Lname, f.Flavor_type
from Chef as c
join Cake as ca on c.SSN = ca.chef_ssn
join Cake_Flavor as f on ca.Cake_ID = f.cake_id;

--2
select top 3 ca.Cake_ID, ca.details , sum(o.Quantity) as numberSold
from Orders as o
join Cake_Price as p on o.price_id = p.Price_ID
join Cake as ca on p.Cake_ID = ca.Cake_ID
group by ca.Cake_ID, ca.details
order by numberSold desc;

--8
select c.Fname, c.Lname, count(o.Order_number) as Total_Cakes_Sold
from Chef as c
join Cake as ca ON c.SSN = ca.chef_ssn
join Cake_Price as p ON ca.Cake_ID = p.Cake_ID
join Orders as o ON p.Price_ID = o.price_id
group by c.Fname, c.Lname;


