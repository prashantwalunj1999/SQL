select * from Products
WHERE UnitPrice = 18

select * from Products
Where UnitPrice> 55

select * from Products
Where UnitPrice< 55

select * from Products
Where UnitPrice> = 55

select * from Products
Where UnitPrice<> 18 --##not

select * from Products
Where UnitPrice BETWEEN 50 AND 60

select * from Customers
where city='paris'

select * from Customers
where City in ('Paris','London','Berlin')

select * from Customers
where Country IN ('USA','UK')

--###And distinct city from customers

select * from Customers
where Country='Germany' and City='Berlin'

select * from Customers
where Country='UK' and City='London'

--### or
select * from Customers
where Country='Berlin' or City='Aachen'

select * from Customers
where Country='Germany' or City='Spain'

-------### Not
select * from Customers
where not Country='Germany'

select * from Customers
where not Country in('Germany','Spain','USA','UK')

---### combine == and,or not

select * from Customers
where Country='Germany' and (City='Berlin' or City='Aachen')

select * from Customers
where not  Country='Germany' and not Country='USA'

select * from Customers
where Country='Germany' and not (City='Berlin' or City='Aachen')

select * from Customers
where Country='USA' and not (Region='OR' or Region='WA' ) 

---### Order by

select * from Customers
order by Country

select * from Customers
order by Country desc

select * from products
order by unitprice

select * from products
order by unitprice desc

select Country,City from Customers
order by Country,City

select Country,City from Customers
order by Country asc,City desc

--##null values
--this is null METHOD

select * from Customers

select * from Customers
where Region is NULL

select * from Customers
where Fax is NULL

select * from Customers
where Region is NULL and Fax is NULL

--this is not null operator

select CompanyName, ContactName, Region from Customers
where Region is not null

select ContactName,Region,Fax from Customers
where Region is not null and Fax is null

--## sql update statement

--update table

select * from Customers

select * into Customers2 from Customers

select * from Customers2

UPDATE Customers2
SET ContactName='Irfan'
where CustomerId='ALFKI'

select * from Customers2

--update multiple records

update Customers2
set CompanyName='ANALYTICS', City='Mumbai',Country='India'
where ContactName='Irfan'

select * from Customers2

--update warning
update Customers2
set ContactName='Irfan'

select * from Customers2

----##delete statement

--delete one row

select * from Customers2

delete from Customers2 where CustomerID='ALFKI'

---delete one column
select * from Customers2
alter table customers2
drop column Region

--delete all records

delete from Customers2

select * from Customers2

--delete entire table

drop table Customers2

select * from Customers2

---##top, limit, or rownum clause

select * from Customers

select top 7 * Customers

---top recent example

select top 50 City from Customers

--add a where clause
select top 3 * from Customers where Country='Germany'

--## min() and max()

---min()
select * from Products

select min(UnitPrice) from Products

select min(UnitPrice) as SmallestPrice from Products

---max()
select * from Products

select max(Unitprice) from Products

select max(UnitPrice) as HighestPrice from Products


---##count(),avg() and sum functions

---count()
select * from Products

select count(Unitprice) as Total_Count from Products

---avg()
select avg(Unitprice) as  Avg_Unit_Price from Products

---sum()
select sum(Unitprice) as Sums_Count from Products

