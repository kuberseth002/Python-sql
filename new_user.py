from dotenv import load_dotenv
import mysql.connector
import os

load_dotenv()

host = os.getenv("DB_HOST")
root_user = os.getenv("DB_ROOT_USER")
root_password = os.getenv("DB_ROOT_PASS")
new_user = os.getenv("DB_USER")
new_password = os.getenv("DB_PASS")
database_name = os.getenv("DB_NAME")


# Connect to MySQL
conn = mysql.connector.connect(
    host=host,
    user=root_user,
    password=root_password
)

cursor = conn.cursor()
print("Connected to MySQL successfully!")

# old method
# new_user = "kuber-data"
# new_password = "kuber@002"
# database_name = "user_database"  

# Drop user if exists
cursor.execute(f"DROP USER IF EXISTS '{new_user}'@'localhost';")
print(f"User '{new_user}' dropped if it existed.")

# Create the user
cursor.execute(f"CREATE USER '{new_user}'@'localhost' IDENTIFIED BY '{new_password}';")
print(f"User '{new_user}' created successfully.")

cursor.execute(f"CREATE DATABASE IF NOT EXISTS `{database_name}`;")

cursor.execute(f"GRANT ALL PRIVILEGES ON `{database_name}`.* TO '{new_user}'@'localhost';")
cursor.execute("FLUSH PRIVILEGES;")
print(f"Granted privileges to '{new_user}' on '{database_name}'.")

# old method
# # user_to_check = "kuber-data"
# # host = "localhost"

cursor.execute(f"SHOW GRANTS FOR '{new_user}'@'{host}';")
print(f"\nPrivileges for user '{new_user}'@'{host}':")
for grant in cursor.fetchall():
    print(grant[0])
    

# connection with new user
conn = mysql.connector.connect(
    host=host,
    user=new_user,
    password=new_password,
    database=database_name
)
cursor = conn.cursor()

cursor.execute("""
    CREATE TABLE IF NOT EXISTS employees (
        emp_id INT AUTO_INCREMENT PRIMARY KEY,
        emp_name VARCHAR(100) NOT NULL,
        emp_role VARCHAR(50),
        emp_salary DECIMAL(10,2)
    )
""")
print("Table 'employees' created successfully.")


cursor.execute("INSERT INTO employees (emp_name, emp_role, emp_salary) VALUES (%s, %s, %s)", 
               ("Alice", "Manager", 75000.00))
cursor.execute("INSERT INTO employees (emp_name, emp_role, emp_salary) VALUES (%s, %s, %s)", 
               ("Bob", "Developer", 60000.00))
conn.commit()
print("Data inserted successfully.")


cursor.execute("SELECT * FROM employees")
print("\nEmployee Records:")
for row in cursor.fetchall():
    print(row)

# Update Data
cursor.execute("UPDATE employees SET emp_salary = 80000 WHERE emp_name = 'Alice'")
conn.commit()
print("Salary updated for Alice.")

# Delete Data
cursor.execute("DELETE FROM employees WHERE emp_name = 'Bob'")
conn.commit()
print("Bob's record deleted.")

# # Final Read to verify changes
cursor.execute("SELECT * FROM employees")
print("\nUpdated Employee Records:")
for row in cursor.fetchall():
    print(row)

# Close the cursor and connection
cursor.close()
conn.close()
print("MySQL connection closed.")






























































    
    
# cursor.execute("SELECT user, host FROM mysql.user;")

# users = cursor.fetchall()

# print("\nList of MySQL Users:")
# for user in users:
#     print(user)


# cursor.close()
# conn.close()