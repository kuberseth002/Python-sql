import mysql.connector

# Establish connection
conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='Kuberseth#@0002'  # Replace with your actual password
)

# Check if the connection is successful
if conn.is_connected():
    print("Connected to MySQL successfully!")
else:
    print("Failed to connect.")

# Close the connection (optional)
conn.close()
