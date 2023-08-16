import mysql.connector

# Replace with your own MySQL server information
host = "your_host"
user = "your_user"
password = "your_password"

try:
    # Connect to the MySQL server
    connection = mysql.connector.connect(
        host=host,
        user=user,
        password=password
    )

    # Create a cursor object to interact with the server
    cursor = connection.cursor()

    # Execute SQL command to list all databases
    cursor.execute("SHOW DATABASES")

    # Fetch all the database names
    databases = cursor.fetchall()

    # Print the list of databases
    print("List of databases:")
    for db in databases:
        print(db[0])

except mysql.connector.Error as err:
    print("Error:", err)

finally:
    # Close the cursor and connection
    if cursor:
        cursor.close()
    if connection:
        connection.close()
