'''[✓]
Renouncers
1. Check if verified by the CWA [✓]
2. Create a child's account for renouncing[✓] 
3. See own child status [✓]
4. View donation history[✓]
5. View own profile[✓]
6. Edit own profile [✓]
'''
def child_input(procedure):
    fname=input("Enter First Name: ")
    lname=input("Enter Last Name: ")
    date=input("Date of Birth (yy-mm-dd): ")
    sex=input("Sex (M/F/O): ")
    religion=input("Religion: ")
    blood_group=input("Blood Group ('A+','A-','B+','B-','AB+','AB-','O+','O-','Other'): ")
    skin_color=input("Skin Color: ")
    medical_condition=input("Medical Condition: ")
    fname1=input("First name of parent 1: ")
    lname1=input("Last name of parent 1: ")
    fname2=input("First name of parent 2: ")
    lname2=input("Last name of parent 2: ")
    args=[fname,lname,date,sex,religion,blood_group,skin_color,fname1,lname1,fname2,lname2,medical_condition,int(username)]
    mycursor.callproc(procedure,args)
    return

def add_only_child():
    child_input('insert_new_child')
    database.commit()
    return

def add_sibling_child():
    siblings=int(input("Add number of children:"))
    if(siblings==1):
        add_only_child()
    else:
        mycursor.execute("Start transaction;")
        child_input('insert_new_sibling_func1')
        for i in range(0,siblings-1):
            child_input('insert_new_sibling_func2')
        mycursor.execute("Commit;")
        database.commit()
    return
def add_child():
    print("1.Add single Child\n2.Add siblings")
    x=int(input())
    if(x==1):
        add_only_child()
    elif(x==2):
        add_sibling_child()
    else:
        print("Enter Valid Number")
    return

def child_status():
    print("Your renounciation details are as follows")
    child_v_status='''select first_name,last_name,date_of_birth,sex,religion,blood_group,skin_color,status,medical_condition,name, house_no, locality, pin_code, state, contact_details from own_child_view_ga;'''
    mycursor.execute(child_v_status)
    execution=mycursor.fetchall()
    if(len(execution)>0):
        for child_details in execution:
            first_name,last_name,date_of_birth,sex,religion,blood_group,skin_color,status,medical_condition,name, house_no, locality, pin_code, state, contact_details=child_details
            print("Name:",first_name,last_name)
            print("Born:",date_of_birth)
            print("Sex:",sex)
            print("Religion:", religion,"\nBlood Group:",blood_group,"\nSkin Colour:",skin_color,"\nMedical Condition:",medical_condition)
            print("Status:",status)
            print("Welfare Home Details")
            print("\tName:",name)
            print("\tAddress:",house_no,locality,state,pin_code)
            print("\tContact:",contact_details)
            print()
                
    child_nv_status='''select first_name,last_name,date_of_birth,sex,religion,blood_group,skin_color,medical_condition from own_temp_child_view;'''
    mycursor.execute(child_nv_status)
    execution=mycursor.fetchall()
    if len(execution)>0:
        print("Child Not renounciation not complete yet!")
        for child_details in execution:
            first_name,last_name,date_of_birth,sex,religion,blood_group,skin_color,medical_condition=child_details
            print("Name:",first_name,last_name)
            print("Born:",date_of_birth)
            print("Sex:",sex)
            print("Religion:", religion,"\nBlood Group:",blood_group,"\nSkin Colour:",skin_color,"\nMedical Condition:",medical_condition)
            print()
    return

def welfare_homes():
    all_homes='''select name,
    house_no,
    locality,
    pin_code,
    state,
    contact_details,
    head_incharge_first_name,
    head_incharge_last_name,
    max_capacity,
    current_capacity from welfare_home;'''
    count=1
    mycursor.execute(all_homes)
    for results in mycursor.fetchall():
        name,house_no,locality,pin_code,state,contact_details,head_incharge_first_name,head_incharge_last_name,max_capacity,current_capacity=results
        print(count,".",sep="")
        print("Name:",name)
        print("Address:",house_no,locality,state,pin_code)
        print("Contact:",contact_details)
        print("Person Incharge:", head_incharge_first_name,head_incharge_last_name)
        print("Capacity: ",current_capacity,"/",max_capacity,sep="")
        print()
        count+=1
    return

def donation_history():
    print("Your previous donations")
    my_donations='''select * from their_donation_view;'''
    mycursor.execute(my_donations)
    for past_donations in mycursor.fetchall():
        T_ID,date,amount,method,home=past_donations
        print("Donation ID",T_ID," Dated",date,"for Rs.",amount,"Donated to",home,"via",method)
        
def personal_details():
    print("Personal Details")
    personal_details='''select * from ga_view;'''
    mycursor.execute(personal_details)
    for personal_result in mycursor.fetchall():
        cr_ID,house_no,locality, pin_code, state, contact_details, gatype=personal_result
        print("ID:",cr_ID)
        print("Address:",house_no,locality,pin_code,state)
        print("Contact:",contact_details)
        print("Agency Type:",gatype )
    return

def personal_details_temp():
    print("Personal Details")
    personal_details='''select * from temp_ga_view1;'''
    mycursor.execute(personal_details)
    for personal_result in mycursor.fetchall():
        cr_ID,house_no,locality, pin_code, state, contact_details, gatype=personal_result
        print("ID:",cr_ID)
        print("Address:",house_no,locality,pin_code,state)
        print("Contact:",contact_details)
        print("Agency Type:",gatype )
    return

def edit_details():
    print("Enter field number to change",end="")
    print('''
        1. Locality
        2. Pin Code
        3. State
        4. Contact Details
        5. Agency Type
        6. House Number''')

    fied_no=int(input())
    print("Enter new value for the selected field")
    new_value=input()
    if(fied_no==1):
        edit_details='''update ga_view set locality= %s where cr_ID = SUBSTRING_INDEX(USER(), '@', 1);'''
    elif(fied_no==2):
        edit_details='''update ga_view set pin_code= %s where cr_ID = SUBSTRING_INDEX(USER(), '@', 1);'''
    elif(fied_no==3):
        edit_details='''update ga_view set state= %s where cr_ID = SUBSTRING_INDEX(USER(), '@', 1);'''
    elif(fied_no==4):
        edit_details='''update ga_view set contact_details= %s where cr_ID = SUBSTRING_INDEX(USER(), '@', 1);'''
    elif(fied_no==5):
        edit_details='''update ga_view set type= %s where cr_ID = SUBSTRING_INDEX(USER(), '@', 1);'''
    elif(fied_no==6):
        edit_details='''update ga_view set house_no= %s where cr_ID = SUBSTRING_INDEX(USER(), '@', 1);'''
    else:
        print("Enter a valid field")
        return
    mycursor.execute(edit_details,(new_value,))
    database.commit()
    personal_details()
    return

def edit_details_temp():
    print("Enter field number to change",end="")
    print('''
        1. Locality
        2. Pin Code
        3. State
        4. Contact Details
        5. Agency Type ''')

    fied_no=int(input())
    print("Enter new value for the selected field")
    new_value=input()
    if(fied_no==1):
        edit_details='''update temp_ga_view1 set locality= %s where cr_ID = SUBSTRING_INDEX(USER(), '@', 1);'''
    elif(fied_no==2):
        edit_details='''update temp_ga_view1 set pin_code= %s where cr_ID = SUBSTRING_INDEX(USER(), '@', 1);'''
    elif(fied_no==3):
        edit_details='''update temp_ga_view1 set state= %s where cr_ID = SUBSTRING_INDEX(USER(), '@', 1);'''
    elif(fied_no==4):
        edit_details='''update temp_ga_view1 set contact_details= %s where cr_ID = SUBSTRING_INDEX(USER(), '@', 1);'''
    elif(fied_no==5):
        edit_details='''update temp_ga_view1 set type= %s where cr_ID = SUBSTRING_INDEX(USER(), '@', 1);'''
    else:
        print("Enter a valid field")
        return
    mycursor.execute(edit_details,(new_value,))
    database.commit()
    personal_details()
    return
def check_verified():
    try:
        check_verified ='''select * from ga_view;'''
        mycursor.execute(check_verified)
        return True
    except  mysql.connector.Error as err:
        return False
    
def print_verified():
    if(check_verified()):
        print("Congratulations!!!\n You have been verified as a Government Agency for Child Renunciation")
    else:
        print("Wait Up!!!\n You have not been verified yet")
    return

def execute_query_of_choice(choice):
    switcher={
        1: print_verified,
        2: add_child,
        3: child_status,
        4: donation_history,
        5: personal_details,
        6: edit_details
    }
    func=switcher.get(choice,"")
    func()
    return

def execute_query_of_choice_temp(choice):
    switcher={
        1: print_verified,
        2: personal_details_temp,
        3: edit_details_temp,
        4: donation_history
    }
    func=switcher.get(choice,"")
    func()
    return
import mysql.connector
import sqlite3
import hashlib
from datetime import datetime
from mysql.connector import errorcode

try:
    username = input('Enter username : ')
    pswd=(hashlib.sha1(input('Enter password : ').encode())).hexdigest()
    database = mysql.connector.connect(user=username, password=pswd, host='localhost', database='affinity')
    mycursor = database.cursor(buffered=True)
    if(check_verified()==True):
        #This is verified renouncer
        print('''
                1: Check if verified by CWA
                2: Create a child\'s account for renouncing
                3: See own child status
                4: View donation history
                5: View own profile
                6: Edit own profile
                -1: To terminate''')
        
        choice = int(input('Enter query choice :'))
        while(choice!=-1):
            execute_query_of_choice(choice)
            choice = int(input('Enter query choice :'))
    else:
        #This is the temp renouncer 
        print('''
                1: Check if verified by CWA
                2: View own profile
                3: Edit own profile
                4: View Donation History
                -1: To Terminate''')
        choice = int(input('Enter query choice :'))
        while(choice!=-1):
            execute_query_of_choice_temp(choice)
            choice = int(input('Enter query choice :'))
        
	
except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print('Incorrect username/password')
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print('Database does not exist')
    else:
        print(err)

else:
    mycursor.close()
    database.close()

finally:
	print('Execution Complete')




    
        
    
    
	

