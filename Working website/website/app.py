from flask import Flask,flash, render_template,request,redirect
import sys
import mysql.connector
import sqlite3
import hashlib
from datetime import datetime
from mysql.connector import errorcode
from AffinityLib import *
import random
app = Flask(__name__ , template_folder = 'templates/', static_folder = 'static/')

logins={"user_id":"1","pwd":hashlib.sha1("default".encode()).hexdigest()}

def welfare_home(output):
	ids={}
	count=1
	for results in output:
		wh_id,name,house_no,locality,pin_code,state,contact_details,head_incharge_first_name,head_incharge_last_name,max_capacity,current_capacity=results
		print(count,".",sep="")
		print("Name:",name)
		print("Address:",house_no,locality,state,pin_code)
		print("Contact:",contact_details)
		print("Person Incharge:", head_incharge_first_name,head_incharge_last_name)
		print("Capacity: ",current_capacity,"/",max_capacity,sep="")
		print()
		ids[count]=wh_id
		count+=1
	return ids

def no_welfare_homes():
	mydb = mysql.connector.connect(host = "127.0.0.1", user = "root" , passwd = "ytterbium", port = "3306", database = "affinity")
	mycursor=mydb.cursor(buffered=True)
	all_homes='''select welfare_home_ID, name,
	house_no,
	locality,
	pin_code,
	state,
	contact_details,
	head_incharge_first_name,
	head_incharge_last_name,
	max_capacity,
	current_capacity from welfare_home;'''
	mycursor.execute(all_homes)
	output= mycursor.fetchall()
	return output
	
def choose_home():
	no_homes=no_welfare_homes()
	ids=welfare_home(no_homes)
	# print(ids)
	# print(len(no_homes))
	home_choice=int(input('''1. Random Home\n2. Choose a Home\n '''))
	choice=-1
	if(home_choice==1):
		choice=random.randint(1,len(no_homes))
	elif(home_choice==2):
		choice=int(input("Enter Home Number: "))
	else:
		print("INVALID CHOICE")
		return
	# print(choice)
	return ids[choice]
	return

@app.route('/',methods = ['GET', 'POST'])
def hello_world():
	if request.method=='POST':
		if 'Donate' in request.form :
			try:
				print(logins["user_id"])
				if logins["user_id"]=="1":
					user_id="1"
					passw=hashlib.sha1("default".encode()).hexdigest()
				else:
					choice=int(input('''1. Anonymous Donation\n2. Logged In Donation\n '''))
					if choice==1:
						user_id="1"
						passw=hashlib.sha1("default".encode()).hexdigest()
					elif choice==2:
						user_id=logins["user_id"]
						passw=logins["pwd"]
				mydb = mysql.connector.connect(host = "127.0.0.1", user = user_id , passwd = passw, port = "3306", database = "affinity")
				mycursor=mydb.cursor(buffered=True)
				t_id=random.randint(100000000000000,999999999999999)
				# print(t_id)
				index_home=choose_home()
				# print(index_home)
				amount=int(input("Enter Amount: "))
				# print(amount)
				method=input("Enter Method ('check','demand draft','debit card','credit card','online'): ")
				# print(method)
				mycursor.execute("insert into donation values("+str(t_id)+",curdate(),"+ str(amount)+","+str(index_home)+","+str(user_id)+", \""+method+"\" );")
				print("DONATION SUCCESSFUL!!!!")
				mydb.commit()
			except mysql.connector.Error as err:
				print(err)
	return render_template("index.html")

@app.route('/homes')
def welfarehomes():
	return render_template("homes.html")

@app.route('/aboutus')
def about():
	return render_template("aboutus.html")

@app.route('/contactus')
def contact():
	return render_template("contact.html")

@app.route('/meetthechildren')
def children():
	return render_template("children.html")

@app.route('/signup')
def signup():
	return render_template("signup.html")

@app.route('/login' ,methods = ['GET', 'POST'])
def login():
	error=None
	if request.method == 'POST' :
		if 'login' in request.form :
			username = request.form['uname']
			password = hashlib.sha1(request.form['psw'].encode()).hexdigest()

			try:
				mydb = mysql.connector.connect(host = "127.0.0.1", user = "root", passwd = "ytterbium", port = "3306", database = "affinity")
				login_cursor = mydb.cursor(buffered=True)
				sql_command='''select pwd=(%s) from user_pwd where u_id= (%s)'''
				login_cursor.execute(sql_command,(password,username))

				login_result=login_cursor.fetchone()
				login_result=login_result[0]
				if(login_result==1):
					print('You were successfully logged in')
					logins["user_id"]=username
					logins["pwd"]=password
					print(logins["user_id"])
					print(logins["pwd"])
					return render_template("index.html")
			except mysql.connector.Error as err:
				if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
					print('Incorrect username/password')
				elif err.errno == errorcode.ER_BAD_DB_ERROR:
					print('Database does not exist')
				else:
					print(err)
	return render_template("login.html",error=error)

if __name__ == "__main__":
	app.run(debug=True, port=8000)



