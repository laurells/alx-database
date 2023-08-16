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

    # Define the INSERT INTO command for the new row
    insert_command = "INSERT INTO first_table (id, name) VALUES (89, 'Holberton School')"

    # Execute the INSERT INTO command
    cursor.execute(insert_command)
    connection.commit()

    print("New row inserted successfully.")

except mysql.connector.Error as err:
    print("Error:", err)

finally:
    # Close the cursor and connection
    if cursor:
        cursor.close()
    if connection:
        connection.close()
