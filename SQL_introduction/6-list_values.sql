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

    # Define the SELECT command to retrieve all rows from first_table
    select_command = "SELECT * FROM first_table"

    # Execute the SELECT command
    cursor.execute(select_command)

    # Fetch all the rows
    rows = cursor.fetchall()

    # Print all the rows
    print("All rows in 'first_table':")
    for row in rows:
        print(row)

except mysql.connector.Error as err:
    print("Error:", err)

finally:
    # Close the cursor and connection
    if cursor:
        cursor.close()
    if connection:
        connection.close()
