# Introduction to Databases and SQL

This repository provides a basic overview of databases, relational databases, SQL, and MySQL, along with essential concepts related to managing data using SQL.

## What's a Database?

A database is a structured collection of data stored in a systematic manner for easy retrieval, modification, and management. It serves as a repository for various types of information, from simple data points to complex records.

## What's a Relational Database?

A relational database is a type of database that stores data in tables, where each table represents a specific entity, and the relationships between entities are established using keys and indexes.

## What Does SQL Stand For?

SQL stands for **Structured Query Language**. It is a programming language designed for managing and manipulating relational databases. SQL provides a standardized way to communicate with databases, enabling users to perform tasks like querying, updating, and managing data.

## What's MySQL?

MySQL is an open-source relational database management system (RDBMS) that uses SQL as its querying language. It is widely used for various applications, from small-scale projects to large enterprise solutions.

## Creating a Database in MySQL

To create a database in MySQL, you can use the `CREATE DATABASE` statement:
```sql
CREATE DATABASE database_name;
```

## DDL and DML

- **DDL** (Data Definition Language) is used to define and manage the structure of the database, such as creating, altering, or dropping tables.
- **DML** (Data Manipulation Language) is used to manage the data within the database, including operations like inserting, updating, and deleting records.

## Creating or Altering a Table

To create a table, use the `CREATE TABLE` statement:
```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    ...
);
```

To alter a table, use the `ALTER TABLE` statement:
```sql
ALTER TABLE table_name
ADD column_name datatype;
```

## Selecting Data from a Table

To retrieve data from a table, use the `SELECT` statement:
```sql
SELECT column1, column2
FROM table_name
WHERE condition;
```

## Inserting, Updating, or Deleting Data

- To insert data, use the `INSERT INTO` statement:
```sql
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);
```

- To update data, use the `UPDATE` statement:
```sql
UPDATE table_name
SET column1 = new_value1, column2 = new_value2
WHERE condition;
```

- To delete data, use the `DELETE FROM` statement:
```sql
DELETE FROM table_name
WHERE condition;
```

## Subqueries

Subqueries are nested queries within other SQL queries. They allow you to retrieve data from one table based on values from another table.

## Using MySQL Functions

MySQL provides a range of built-in functions for tasks like mathematical calculations, date and time manipulation, string operations, and more. Examples include `SUM`, `COUNT`, `DATE_FORMAT`, and `CONCAT`.

This repository serves as a starting point to understand the basics of databases, SQL, and MySQL. For more in-depth knowledge and practical experience, refer to relevant resources, tutorials, and documentation.

