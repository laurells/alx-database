-- Create the database 'hbtn_0c_0' if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbtn_0c_0;

-- Use the 'hbtn_0c_0' database
USE hbtn_0c_0;

-- Create the table 'second_table' if it doesn't already exist
CREATE TABLE IF NOT EXISTS second_table (
    id INT,
    name VARCHAR(256),
    score INT
);

-- Insert multiple rows into 'second_table'
INSERT INTO second_table (id, name, score) VALUES
    (1, 'John', 10),
    (2, 'Alex', 3),
    (3, 'Bob', 14),
    (4, 'George', 8);
