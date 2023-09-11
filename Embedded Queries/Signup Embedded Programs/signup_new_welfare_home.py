import mysql.connector
from mysql.connector import errorcode
import sqlite3
import hashlib

try:
	name = input('Enter Name of Welfare home : ')
	house_no = input('Enter house_no : ')
	locality = input('Enter locality : ')
	pin_code = int(input('Enter pin_code : '))
	state = input('Enter state : ')
	contact_details = input('Enter phone_no : ')
	head_incharge_first_name = input('Enter First Name of Head Incharge : ')
	head_incharge_last_name = input('Enter Last Name of Head Incharge : ')
	max_capacity = int(input('Enter max capacity of welfare home : '))
	pswd=(hashlib.sha1(input('Enter password : ').encode())).hexdigest()

	if(pin_code<0):
		raise Exception('Invalid pin_code')

	cnx = mysql.connector.connect(user='root', password='ytterbium', host='localhost', database='affinity')
	cursor = cnx.cursor(buffered=True)
	
	cursor.execute('use affinity')
	x = cursor.callproc('insert_new_welfare_home', (name, house_no, locality, pin_code, state, contact_details, head_incharge_first_name, head_incharge_last_name, max_capacity, pswd, -1))
	cnx.commit()
	print('\nYour assigned username is ', x[10])

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