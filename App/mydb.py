import mysql.connector
mydb = mysql.connector.connect(
  host="db",
  port="3306",
  user="root",
  database="dev"
)

mycursor = mydb.cursor()

sql = "INSERT INTO weights (sno, name, weight) VALUES (%s, %s, %s)"
val = (5 , 'divya',68)
mycursor.execute(sql, val)

mydb.commit()
print(mycursor.rowcount, "record inserted.")




