--Easy-Level Tasks (10)
--task 1
--bulk insert is a command to import large data from a file in a sql server table 
--purpose is to quickly load data into a sql server table from an external file, which is useful in data migration

--task 2 
-- List four file formats that can be imported into SQL Server
--csv, txt,xml,json

--task 3
create table Products (
ProductID INT PRIMARY KEY,
ProductName varchar (50),
Price decimal (10,2))

--task 4
insert into Products
values 
(1, 'laptop', 1000.00),
(2,'smartphone', 880.00),
(3, 'bookreader', 500.00)

--task 5
-- Explain the difference between NULL and NOT NULL
-- null means that the column can contain missing or unknown values
-- not null ensures that a column must always have a value, it cant be left empty

--task 6
alter table Products
add constraint UQ_ProductName Unique (ProductName)
--task 7 
select* from Products
where Price >100
--this query retrieves all products with a price above 100

--task 8
alter table Products
add CategoryId int

--task 9 
create table Categories
(CategoryID INT primary key, CategoryName VARCHAR (1000) UNIQUE)
--TASK 10
-- THE identity property is used to auto-generate incremental numbers for a column, commonly used for primary keys

--Medium-Level Tasks (10)
--task 11
--Use BULK INSERT to import data from a text file into the Products table
bulk insert products 
from category
with( FIELDTERMINATOR = ',',  -- Разделитель полей
    ROWTERMINATOR = '\n',   -- Разделитель строк
    FIRSTROW = 2            -- Пропустить заголовок
);

--task 12 
alter table products 
aDD constraint fk_products_categories
Foreign key (categoryID) references Categories (CategoryID)

--task 13
--primary key - гарантирует уникальность значений в колонке и не допукает null
-- может быть один на таблицу и автоматичуски создает кластерный индеакс
--unique key - гарантирует уникальность значений но допускает NULL
--может быть нескольно в одной таблице 
--создает некластерный индекс

--task 14
alter table products 
add constraint chk_Price_Positive
check (price>0)

--task 15
alter  table products 
add stock int not null default 0

--task 16
select productid, ProductName, isnull (price, 0) as price 
from products
--task 17
--foreign key - внешний ключ-это правило в базе данных, которое связывает
--две таблицы и не позволяет вставить или изменить данные так чтобы нарушить связь

--Hard-Level Tasks (10)
--task 18
create table Customers (
customerID int primary key, 
firstname nvarchar(50),
lastname nvarchar(50),
age int check (age>=18))
--task 19
create table numberseries 
(id int identity (100,10) primary key,
value nvarchar(50))

--task 20
create table OrderDetails (orderid int,
productid int,
quantityid int,
primary key (orderid, productid))
--task 21
--isnull - заменяет null на указаниное значение
--coalesce - возвращает первый не-null из списка 

--task 22
create table employees (
empid int primary key,
firstname nvarchar(50),
lastname nvarchar(50),
email nvarchar(100) unique)
--task 23
create table orders (
orderid int primary key,
customerid int,
orderdate date,
constraint fk_orders_customers
foreign key (customerid) references customer(customerid)
on delete cascade 
on update cascade)














