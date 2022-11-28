import mysql.connector
import time

connection = mysql.connector.connect(
  host="localhost",
  database="town_db",
  user="developer",
  password="salainensana"
)

Query = f'SELECT ware_blacksmith.Name, ware_blacksmith.Price '\
        f'FROM ware_blacksmith '\
        f'WHERE ware_blacksmith.Price = (SELECT MAX(ware_blacksmith.Price) '\
                                        f'FROM ware_blacksmith)'


cursor = connection.cursor()
cursor.execute("select database();")
record = cursor.fetchone()

cursor.execute(Query)
record2 = cursor.fetchone()

print("You're connected to database: ", record, "\n")
print(f"Your result for query: \n {Query} : \n\n" , record2)

time.sleep(7)
connection.close
