-- Create the table 'second_table' if it doesn't already exist
CREATE TABLE IF NOT EXISTS your_database_name.second_table (
    id INT,
    name VARCHAR(256),
    score INT
);

-- Insert multiple rows into 'second_table'
INSERT INTO your_database_name.second_table (id, name, score) VALUES
    (1, 'John', 10),
    (2, 'Alex', 3),
    (3, 'Bob', 14),
    (4, 'George', 8);
