Go to http://www.enterprisedb.com/products-services-training/pgdownload#windows
Download version 9.5.3
Select default values except password 
Enter admin as password
For locale, select Thai, Thailand.
At completing the PostgreSQL Setup Wizard,
uncheck the checkbox and click on Finish button.

Go to newly installed program and select psql.

Go to newly installed program and select pgAdmin III
Right click on PostgreSQL 9.5 and select connect to postgres database.
When prompt for password, enter admin as password and select saving the password.

Modify path to include c:\Program Files\Postgresql\9.5\bin

Using command line of PostgreSQL
================================

Test creating database from command line
createdb -h localhost -p 5432 -U postgres testdb
Confirm that database is actually created by going to psql
and enter \l to list databases

Connect to database
-------------------
By SQL Prompt
\c testdb;
By OS Command Prompt
psql -h localhost -p 5432 -U postgres testdb

Create table
------------
CREATE TABLE COMPANY(
   ID INT PRIMARY KEY     NOT NULL,
   NAME           TEXT    NOT NULL,
   AGE            INT     NOT NULL,
   ADDRESS        CHAR(50),
   SALARY         REAL
);
CREATE TABLE DEPARTMENT(
   ID INT PRIMARY KEY      NOT NULL,
   DEPT           CHAR(50) NOT NULL,
   EMP_ID         INT      NOT NULL
);

Use \d to list down all the tables in the attached database
Use \d tablename to describe each table

Create schema
-------------
CREATE SCHEMA myschema;
create table myschema.company(
   ID   INT              NOT NULL,
   NAME VARCHAR (20)     NOT NULL,
   AGE  INT              NOT NULL,
   ADDRESS  CHAR (25) ,
   SALARY   DECIMAL (18, 2),
   PRIMARY KEY (ID)
   );

   select * from myschema.company;

   To drop a schema including all contained objects, use:
   DROP SCHEMA myschema CASCADE;

   CREATE TABLE COMPANY(
   ID INT PRIMARY KEY     NOT NULL,
   NAME           TEXT    NOT NULL,
   AGE            INT     NOT NULL,
   ADDRESS        CHAR(50),
   SALARY         REAL,
   JOIN_DATE	  DATE
);

INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY,JOIN_DATE) VALUES (1, 'Paul', 32, 'California', 20000.00 ,'2001-07-13');
INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,JOIN_DATE) VALUES (2, 'Allen', 25, 'Texas', '2007-12-13');
INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY,JOIN_DATE) VALUES (3, 'Teddy', 23, 'Norway', 20000.00, DEFAULT );
INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY,JOIN_DATE) VALUES (4, 'Mark', 25, 'Rich-Mond ', 65000.00, '2007-12-13' ), (5, 'David', 27, 'Texas', 85000.00 , '2007-12-13');

CREATE TABLE Customer(
Cust_Id Varchar(25),
Cust_F_Name Varchar(30),
Cust_L_Name Varchar(30),
Cust_Email Varchar(50));

Primary Key Constraint
----------------------
CREATE TABLE Employee(
Email Varchar(25) PRIMARY KEY,
First_Name Varchar(30),
Last_Name Varchar(30));

CREATE TABLE Accounts(
Acc_Num Integer,
Acc_Type Integer,
Acc_Desc Varchar(200),
PRIMARY KEY(Acc_Num,Acc_Type));

Foreign Key Constraint
----------------------
CREATE TABLE Department(
Dept_Code Varchar(6) PRIMARY KEY,
Dept_Name Varchar(30));

CREATE TABLE Studen(
Stud_Id Varchar(20) PRIMARY KEY,
Stud_Name Varchar(50),
Dept_Code Varchar(6) REFERENCES Department(Dept_Code));

Foreign Key Multiple Columns
----------------------------
\d Accounts
CREATE TABLE Customer(
Cust_Id Varchar(25) PRIMARY KEY,
Cust_Name Varchar(50),
Cust_Acc_Num Integer,
Cust_Acc_Type Integer,
FOREIGN KEY (Cust_Acc_Num, Cust_Acc_Type) REFERENCES Accounts(Acc_Num, Acc_Type);

Table with more than one foreing key
------------------------------------
\d Student
\d Department
DROP TABLE Student;
CREATE TABLE Studen(
Stud_Id Varchar(20) PRIMARY KEY,
Stud_Name Varchar(50));

CREATE TABLE Students_Departments(
Enroll_Id Varchar(30) PRIMARY KEY,
Stud_Id Varchar(20) REFERENCES Studend(Stud_Id),
Dept_Code Varchar(6)) REFERENCES Department(Dept_Code);

Check Constraint
----------------
CREATE TABLE Item(
Item_Code Integer PRIMARY KEY,
Name Text,
Price Numeric CHECK (Price>0));

CREATE TABLE Manager(
Manager_Id Integer PRIMARY KEY.
Name Text.
Salary Numeric CONSTRAINT Constained_Salary 
CHECK ((Salary > 4000) AND (Salary < 10000));

\d Salary

Table Check Constraint
----------------------
CREATE TABLE Event(
Event_id Integer PRIMARY KEY,
Start_Date Date CHECK (Start_Date > '01/01/2011'),
End_Date Date,
CHECK (End_Date > '01/01/2011'),
CONSTRAINT Start_End_Date_Const CHECK (End_Date > Start_Date));

Not Null Constraint
-------------------
CREATE TABLE Song(
Sond_Id Integer PRIMARY KEY,
Title Varchar(300) NOT NULL,
Artist Varchar(50) CHECK (Artist IS NOT NULL),
Price Number NOT NULL CHEKC (Price > 0));

Unique Constraint
-----------------
CREATE TABLE Book(
Book_Id Integer PRIMARY KEY,
Title Text,
ISBN Varchar(20) UNIQUE,
Auth_F_Name Varchar(25),
Auth_L_Name Varchar(25),
CONSTRAINT Book_Auth_Const UNIQUE (Auth_F_Name, Auth_L_Name));

Use PgAdmin to create tables
----------------------------

Default Values
--------------
CREATE TABLE Transacation(
Trans_Id Integer PRIMARY KEY,
Trans_Type Char(3) DEFAULT 'REV',
Trans_Amount Numeric,
Trans_Timestamp Timestamp DEFAULT CURRENT_TIMESTAMP);

DROP TABLE CASCADE
------------------
\d event
DROP TABLE event
\d student
DROP TABLE student CASCADE;

To backup database
pg_dump -f port_development.sql port_development

cd\aaa\data
pg_dump -U postgres -W -c port_development > port.sql
Password: admin

To restore database?
psql -U postgres -d port_development -f port.sql
or
psql -U postgres port_development < port.sql