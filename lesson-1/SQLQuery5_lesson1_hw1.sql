--EASY - Beginning 


1. Define the following terms: -- data, database, relational database, and table
--     data - just raw information, unsorted figures like number, text, data and etc
--       database - digital collected data, usually structred but not analyzed and filtered
--         relational data - stored data (in different tables) in database that can be found with the usage of ID's or keys
--           table - rows and colums used to organize data in database

-- 2. List five key features of SQL Server.
-- integration 
-- security
-- advanced performance and query optimization
-- high availability 
-- mobile bi and scalability

-- 3. What are the different authentication modes available when connecting to SQL Server? (Give at least 2)
-- sql server server authenticatino
-- windows authentication

--EASY - the end

-- MEDIUM - Beginning
-- 4. Create a new database in SSMS named SchoolDB.

CREATE database schoolIDB

--5. Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).

use schoolIDB
CREATE TABLE STUDENTS (
 studentID int primary key,
 name varchar (50),
 age int);

 -- 6.Describe the differences between SQL Server, SSMS, and SQL.
 -- sql server - it is smth like Word-file or storage where you keep all the data - or just database
 -- ssms - it is the tool you use to open and manage data in database, "Word-file' or "storage"
 -- sql - it is the language you use to talk to the database or simply give commands/queries to the tool 

 -- MEDIUM - the end 


 -- HARD - Beginning
 -- Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.
--dql - data  query language - queries writing commands - чтение данных (запросы) - select from 
--dml - data manipulation language  - upadating/deleting/inserting and etc - работа с данными, их изменение, добавление и тд 
--ddl - data definition language - creating or changing data - созадание или изменение данных - create, alter, drop
--dcl - data controp language - assess control - управление доступом - grand, revoke
--tcl - transaction control language - управление транзакциями - commit, rollback, savepoint

 --Write a query to insert three records into the Students table.

 insert into STUDENTS (studentID, name, age)
 values 
 (1, 'Margarita', 32),
 (2, 'Daniel' ,30),
 (3, 'Svetlana' ,29);


 -- instalation of ADVENTUREWORKSDW2022 - DONE 

 -- HARD - the end


