import mysql.connector
from mysql.connector import errorcode
import sqlite3
import hashlib

try:
	fp1_first_name = input('Enter First Name of Parent 1 : ')
	fp1_last_name = input('Enter Last Name of Parent 1 : ')
	fp2_first_name = input('Enter First Name of Parent 2 : ')
	fp2_last_name = input('Enter Last Name of Parent 2 : ')
	fp1_dob = input('Enter dob of Parent 1 : ')
	fp2_dob = input('Enter dob of Parent 2 : ')
	house_no = input('Enter house_no : ')
	locality = input('Enter locality : ')
	pin_code = int(input('Enter pin_code : '))
	state = input('Enter state : ')
	contact_details = input('Enter phone_no : ')
	income_per_annum = int(input('Enter income_per_annum : '))
	preference = input('Enter preference : ')
	pswd=(hashlib.sha1(input('Enter password : ').encode())).hexdigest()

	if(pin_code<0):
		raise Exception('Invalid pin_code')
	if(income_per_annum<100000):
		raise Exception('Income too low')
	if (preference  not in ['none','mentally challenged','physically challenged','both']):
		raise Exception('Invalid preference')


	cnx = mysql.connector.connect(user='root', password='ytterbium', host='localhost', database='affinity')
	cursor = cnx.cursor(buffered=True)
	
	cursor.execute('use affinity')
	x = cursor.callproc('insert_new_fostering_parent', (fp1_first_name,fp1_last_name,fp2_first_name,fp2_last_name,fp1_dob,fp2_dob,house_no,locality,pin_code,state,contact_details,income_per_annum,preference,pswd,-1))
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