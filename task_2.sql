import mysql.connector

mydb = mysql.connector.connect(host="localhost", user="root", passwd="Ci$c0555", database="alx_book_store")
cursor = mydb.cursor()

cursor.execute("CREATE TABLE Authors (author_id INT PRIMARY KEY,author_name VARCHAR(215) )")
cursor.execute("CREATE TABLE Books (book_id INT PRIMARY KEY, title VARCHAR(130),author_id INT, FOREIGN KEY(author_id) REFERENCES Authors (author_id),price DOUBLE,publication_date DATE)")
cursor.execute("CREATE TABLE Customers (customer_id INT PRIMARY KEY,customer_name VARCHAR(215),email VARCHAR(215),address TEXT)")
cursor.execute("CREATE TABLE Orders (order_id INT PRIMARY KEY,customer_id INT, FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),order_date DATE)")
cursor.execute("CREATE TABLE Order_Details (orderdetailid INT PRIMARY KEY,order_id INT, FOREIGN KEY (order_id) REFERENCES Orders(order_id),book_id INT, FOREIGN KEY (book_id) REFERENCES Books(book_id),quantity DOUBLE)")

mydb.commit()

mydb.close()
cursor.close()
