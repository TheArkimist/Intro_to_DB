import mysql.connector
from mysql.connector import Error

try:
     # Connect to MySQL Server (update host, user, password as needed)
    connection = mysql.connector.connect(
        host='localhost',
        user='root',          # replace with your MySQL username
        password='Ci$c0555'  # replace with your MySQL password
    )

    if connection.is_connected():
        cursor = connection.cursor()
        # Create the database if it doesn’t exist
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as e:
    print(f"Error connecting to MySQL or creating database: {e}")

finally:
    # Safely close the connection
    if  connection.is_connected():
        cursor.close()
        connection.close()
        # Optional message to confirm closure
        print("MySQL connection closed.")
