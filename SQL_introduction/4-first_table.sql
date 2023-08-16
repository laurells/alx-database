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

    # Define the CREATE TABLE command
    create_table_command = """
    CREATE TABLE IF NOT EXISTS first_table (
        id INT,
        name VARCHAR(256)
    )
    """

    # Execute the CREATE TABLE command
    cursor.execute(create_table_command)
    connection.commit()

    print("Table 'first_table' created successfully if it didn't exist.")

except mysql.connector.Error as err:
    print("Error:", err)

finally:
    # Close the cursor and connection
    if cursor:
        cursor.close()
    if connection:
        connection.close()
