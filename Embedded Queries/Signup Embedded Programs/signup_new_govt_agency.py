import mysql.connector
from mysql.connector import errorcode
import sqlite3
import hashlib


try:
	house_no = input('Enter house_no : ')
	locality = input('Enter locality : ')
	pin_code = int(input('Enter pin_code : '))
	state = input('Enter state : ')
	contact_details = input('Enter phone_no : ')
	ga_type = input('Enter type of agency : ')
	pswd=(hashlib.sha1(input('Enter password : ').encode())).hexdigest()

	if(pin_code<0):
		raise Exception('Invalid pin_code')
	if (ga_type  not in ['police','hospital','fire station','welfare home','NGO','other']):
		raise Exception('Invalid type of agency')

	cnx = mysql.connector.connect(user='root', password='ytterbium', host='localhost', database='affinity')
	cursor = cnx.cursor(buffered=True)
	
	cursor.execute('use affinity')
	x = cursor.callproc('insert_new_govt_agency', (house_no, locality, pin_code, state, contact_details, ga_type, pswd, -1))
	cnx.commit()
	print('\nYour assigned username is ', x[7])

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