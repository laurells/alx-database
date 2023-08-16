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

    # Define the SELECT COUNT(*) command with a WHERE clause for id = 89
    select_command = "SELECT COUNT(*) FROM first_table WHERE id = 89"

    # Execute the SELECT command
    cursor.execute(select_command)

    # Fetch the result
    result = cursor.fetchone()

    print(f"Number of records with id = 89 in 'first_table': {result[0]}")

except mysql.connector.Error as err:
    print("Error:", err)

finally:
    # Close the cursor and connection
    if cursor:
        cursor.close()
    if connection:
        connection.close()
