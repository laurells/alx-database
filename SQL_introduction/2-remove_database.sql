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

    # Execute SQL command to drop the database if exists
    cursor.execute(f"DROP DATABASE IF EXISTS {database}")

    print(f"Database {database} deleted successfully if it existed.")

except mysql.connector.Error as err:
    print("Error:", err)

finally:
    # Close the cursor and connection
    if cursor:
        cursor.close()
    if connection:
        connection.close()
