import mysql.connector

# Replace with your own MySQL server information
host = "your_host"
user = "your_user"
password = "your_password"
database = "hbtn_0c_0"

try:
    # Connect to the MySQL server
    connection = mysql.connector.connect(
        host=host,
        user=user,
        password=password
    )

    # Create a cursor object to interact with the server
    cursor = connection.cursor()

    # Execute SQL command to create the database if not exists
    cursor.execute(f"CREATE DATABASE IF NOT EXISTS {database}")

    print(f"Database {database} created successfully.")

except mysql.connector.Error as err:
    print("Error:", err)

finally:
    # Close the cursor and connection
    if cursor:
        cursor.close()
    if connection:
        connection.close()
