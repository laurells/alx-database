import mysql.connector
import sys

# Replace with your own MySQL server information
host = "your_host"
user = "your_user"
password = "your_password"
database = sys.argv[1]  # Get the database name from the command-line argument

try:
    # Connect to the MySQL server
    connection = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )

    # Create a cursor object to interact with the server
    cursor = connection.cursor()

    # Define the CREATE TABLE command for second_table
    create_table_command = """
    CREATE TABLE IF NOT EXISTS second_table (
        id INT PRIMARY KEY,
        name VARCHAR(256),
        score INT
    )
    """
    
    # Execute the CREATE TABLE command
    cursor.execute(create_table_command)
    connection.commit()

    print("Table 'second_table' created successfully if it didn't exist.")

    # Define the records to be inserted
    records = [
        (1, "John", 10),
        (2, "Alex", 3),
        (3, "Bob", 14),
        (4, "George", 8)
    ]

    # Define the INSERT INTO command
    insert_command = "INSERT INTO second_table (id, name, score) VALUES (%s, %s, %s)"

    # Execute the INSERT INTO command for each record
    cursor.executemany(insert_command, records)
    connection.commit()

    print("Records inserted successfully.")

except mysql.connector.Error as err:
    print("Error:", err)

finally:
    # Close the cursor and connection
    if cursor:
        cursor.close()
    if connection:
        connection.close()
