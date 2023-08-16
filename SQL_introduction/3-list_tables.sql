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

    # Execute SQL command to list all tables in the database
    cursor.execute("SHOW TABLES")

    # Fetch all the table names
    tables = cursor.fetchall()

    # Print the list of tables
    print(f"List of tables in database '{database}':")
    for table in tables:
        print(table[0])

except mysql.connector.Error as err:
    print("Error:", err)

finally:
    # Close the cursor and connection
    if cursor:
        cursor.close()
    if connection:
        connection.close()
