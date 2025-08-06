-- LESSON - 2

-- Basic-Level Tasks (10)
-- task1
CREATE  table Employess (
EmpID INT, 
Name Varchar (50), 
Salary decimal (10,2));
--task 2
insert into Employess (EmpId, Name, Salary)
values (1, 'Margarita', 1000.00),
(2, 'Bob' ,1100.10),
(3, 'Kate', 1200.20);
--task 3
update Employess
set salary = 7000.00
where EmpID=1
--task 4
delete from Employess
where EmpID=2
--task 5
-- Give a brief definition for difference between DELETE, TRUNCATE, and DROP.
--delete - deletes chosen or specific part of row
--truncate - removes all data from table, keeps the structure (indexes, colums and etc)
--drop - deletes the table from database, structure + data

--task 6 
alter table Employess
alter column Name Varchar (500)
--task 7
ALTER TABLE Employess
ADD department varchar (50)
--task8
alter table Employess
alter column salary float
--task 9 
create table Departments (
DepartmentID int primary key, 
departmentName varchar(50))
--task 10
truncate table employess


--Intermediate-Level Tasks (6)
--task 11
insert into Departments (DepartmentID,departmentName)
values 
(1, 'it'),
(2, 'marketing'),
(3, 'legal'),
(4, 'sales'),
(5, 'hr')
--task 12
update Employess
set department = 'management'
where salary > 5000
--task 13
delete  from Employess

--task 14
alter table employess
drop column department 
--task 15
exec sp_rename 'employess', 'StaffMembers'
--task 16
drop table Departments

--Advanced-Level Tasks (9)
--task 17, 18
create table Products (
ProductID int primary key, 
ProductName varchar,
Category varchar,
Price decimal (10,2) check (price>0),
description text)
-- task 19
alter table Products
ADD  StockQuantity int default 50
--task 20
exec sp_rename 'Products.Category', 'ProductCategory'
--task 21
insert into Products (ProductID, ProductName, ProductCategory,Price, description)
values 
(1, 'laptop', 'electronics', 850.00, '15-inch display'),
(2,'desk chair', 'furniture', 120.00, 'ergonomic design'),
(3,'notebook','stationery',2.5, '200 pages'),
(4,'smartphone','electronics',699.99, '64gb storage'),
(5,'coffee mug','kitchenware', 5.99,'ceramic material')

alter table products 
alter column productname varchar(1000)

alter table products 
alter column ProductCategory varchar(1000)
--task 22
select* into products_backup from Products
--task 23
exec sp_rename 'products', 'inventory'
--task 24
alter table inventory
alter column price float
--task 25
alter table inventory 
add productcode int identity (1000,5)











