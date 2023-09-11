import mysql.connector
from mysql.connector import errorcode
import sqlite3
import hashlib

try:
	ap1_first_name = input('Enter First Name of Parent 1 : ')
	ap1_last_name = input('Enter Last Name of Parent 1 : ')
	ap2_first_name = input('Enter First Name of Parent 2 : ')
	ap2_last_name = input('Enter Last Name of Parent 2 : ')
	ap1_dob = input('Enter dob of Parent 1 : ')
	ap2_dob = input('Enter dob of Parent 2 : ')
	house_no = input('Enter house_no : ')
	locality = input('Enter locality : ')
	pin_code = int(input('Enter pin_code : '))
	state = input('Enter state : ')
	contact_details = input('Enter phone_no : ')
	income_per_annum = int(input('Enter income_per_annum : '))
	preference = input('Enter preference : ')
	pswd=(hashlib.sha1(input('Enter password : ').encode())).hexdigest()
	assigned_username = -1

	if(pin_code<0):
		raise Exception('Invalid pin_code')
	if(income_per_annum<100000):
		raise Exception('Income too low')
	if (preference  not in ['none','mentally challenged','physically challenged','both']):
		raise Exception('Invalid preference')


	cnx = mysql.connector.connect(user='root', password='ytterbium', host='localhost', database='affinity')
	cursor = cnx.cursor(buffered=True)
	
	cursor.execute('use affinity')
	x = cursor.callproc('insert_new_adoptive_parent', (ap1_first_name,ap1_last_name,ap2_first_name,ap2_last_name,ap1_dob,ap2_dob,house_no,locality,pin_code,state,contact_details,income_per_annum,preference,pswd,-1))
	cnx.commit()
	print('\nYour assigned username is ', x[14])

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