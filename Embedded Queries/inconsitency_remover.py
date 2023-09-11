import mysql.connector
import sqlite3
database = mysql.connector.connect(user="root", password="12345", host='localhost', database='affinity')
mycursor = database.cursor(buffered=True)
mycursor2 = database.cursor(buffered=True)
mycursor.execute('''select child_id,bd1_first_name,bd1_last_name,bd2_first_name,bd2_last_name from
 biological_donor inner join renounce_bd  on  biological_donor.cr_ID=renounce_bd.renouncer_id;''')
for x in mycursor.fetchall():
	ids,name1,name2,name3,name4=x
	mycursor2.execute(''' update child set biological_parent1_first_name=%s where child_id= %s ;''',(name1,ids,))
	database.commit()
	mycursor2.execute(''' update child set biological_parent1_last_name=%s where child_id= %s ;''',(name2,ids,))
	database.commit()
	mycursor2.execute(''' update child set biological_parent2_first_name=%s where child_id= %s ;''',(name3,ids,))
	database.commit()
	mycursor2.execute(''' update child set biological_parent2_last_name=%s where child_id= %s ;''',(name4,ids,))
	database.commit()
