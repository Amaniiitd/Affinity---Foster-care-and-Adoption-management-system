import mysql.connector
from mysql.connector import errorcode
import sqlite3
import hashlib

try:
	bd1_first_name = input('Enter First Name of Parent 1 : ')
	bd1_last_name = input('Enter Last Name of Parent 1 : ')
	bd2_first_name = input('Enter First Name of Parent 2 : ')
	bd2_last_name = input('Enter Last Name of Parent 2 : ')
	bd1_dob = input('Enter dob of Parent 1 : ')
	bd2_dob = input('Enter dob of Parent 2 : ')
	house_no = input('Enter house_no : ')
	locality = input('Enter locality : ')
	pin_code = int(input('Enter pin_code : '))
	state = input('Enter state : ')
	contact_details = input('Enter phone_no : ')
	pswd=(hashlib.sha1(input('Enter password : ').encode())).hexdigest()

	if(pin_code<0):
		raise Exception('Invalid pin_code')


	cnx = mysql.connector.connect(user='root', password='ytterbium', host='localhost', database='affinity')
	cursor = cnx.cursor(buffered=True)
	
	cursor.execute('use affinity')
	x = cursor.callproc('insert_new_biological_donor', (bd1_first_name,bd1_last_name,bd2_first_name,bd2_last_name,bd1_dob,bd2_dob,house_no,locality,pin_code,state,contact_details,pswd,-1))
	cnx.commit()
	print('\nYour assigned username is ', x[12])

except mysql.connector.Error as err:
	if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
		print('Incorrect username/password')
	elif err.errno == errorcode.ER_BAD_DB_ERROR:
		print('Database does not exist')
	else:
		print(err)

else:
	cursor.close()
	cnx.close()

finally:
	print('Execution Complete')