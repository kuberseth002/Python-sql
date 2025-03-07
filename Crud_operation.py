import mysql.connector

# Connect to MySQL
conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='Kuberseth#@0002',  
    database='mydatabase'  
)

if conn.is_connected():
    print("Connected to MySQL successfully!")

cursor=conn.cursor()

# creating database
cursor.execute("CREATE DATABASE IF NOT EXISTS mydatabase")
print("database created successfully")

# Create a table
cursor.execute("""
    CREATE TABLE IF NOT EXISTS users (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100),
        email VARCHAR(100),
        age INT
    )
""")

print(" Table created successfully!")


# insert values using crud operations
query="INSERT INTO users (name,email,age) VALUES (%s,%s,%s)"
values=("abhi","sks.com",23)


cursor.execute(query,values)
conn.commit() #save changes

print("user added successfully")

# reading the data
cursor.execute("SELECT * FROM users")
rows = cursor.fetchall() 

print(" Users in Database:")
for row in rows:
    print(row)  


# updating the value
query = "UPDATE users SET age = %s WHERE name = %s"
values = (30, "kuber")

cursor.execute(query, values)
conn.commit()

print("User updated successfully!")


# delete the value
query = "DELETE FROM users WHERE name = %s"
values = ("kuber",)

cursor.execute(query, values)
conn.commit()

print("User deleted successfully!")


cursor.close()
conn.close()




    
# to show databases
# cursor = conn.cursor()
# cursor.execute("SHOW DATABASES")

# for db in cursor:
#     print(db)
# cursor.close()
# conn.close()




