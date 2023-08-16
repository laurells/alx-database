import mysql.connector
import sys

# Replace with your own MySQL server information
host = "your_host"
user = "your_user"
password = "your_password"
database_name = sys.argv[1]  # Get the database name from the command-line argument
table_name = "first_table"    # The table you want to describe

try:
    # Connect to the MySQL server
    connection = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database_name
    )

    # Create a cursor object to interact with the server
    cursor = connection.cursor()

    # Define the query to get the table description from INFORMATION_SCHEMA
    describe_query = f"""
    SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_KEY, COLUMN_DEFAULT, EXTRA
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA = '{database_name}' AND TABLE_NAME = '{table_name}'
    """

    # Execute the query
    cursor.execute(describe_query)

    # Fetch all the rows
    rows = cursor.fetchall()

    # Print the full description of the table
    print(f"Full description of table '{table_name}':")
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
