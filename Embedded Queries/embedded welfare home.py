from mysql.connector import connect, Error
from getpass import getpass

try:
    connection = connect(
        host="localhost",
        user="admin",
        password="1234",
        database="affinity",
    )
    cursor = connection.cursor()


    # Children stats
    cursor.execute("SELECT COUNT(*) FROM affinity.child;")
    total=cursor.fetchall()[0][0]+0
    cursor.execute("SELECT COUNT(*) FROM affinity.child where status='adopted';")
    adopted=cursor.fetchall()[0][0]+0
    cursor.execute("SELECT COUNT(*) FROM affinity.child where status='fostered';")
    fostered=cursor.fetchall()[0][0]+0
    none=total-adopted-fostered
    print("%.2f percent children are currently under foster care" % (fostered*100/total))
    print("%.2f percent children are succesfully adopted" % (adopted*100/total))    
    print("%.2f percent children are currently reciding in our welfare homes, who need your help and care\n" % (none*100/total))
    cursor.fetchall()



    #see donations you received
    id = int(input("Enter Id of your welfare home : "))
    query = "SELECT * FROM affinity.donation Where welfare_home_ID = %d;" % id
    print(query)
    cursor.execute(query)
    print("Donations your welfare home received: {}".format(cursor.fetchall()))


    
    #Approve foster parent
    id = input("Enter Id of foster parent to approve : ")
    query = 'call approve_new_fostering_parent(%s)'
    cursor.execute(query, id)
    print(cursor.fetchall)



    #Approve adoptive parent
    id = input("Enter Id of foster parent to approve : ")
    query = 'call approve_new_adoptive_parent(%s)'
    cursor.execute(query, id)
    print(cursor.fetchall)



    #sign up
    name = input('Enter Name of Welfare home : ')
    house_no = input('Enter house_no : ')
    locality = input('Enter locality : ')
    pin_code = int(input('Enter pin_code : '))
    state = input('Enter state : ')
    contact_details = input('Enter phone_no : ')
    head_incharge_first_name = input('Enter First Name of Head Incharge : ')
    head_incharge_last_name = input('Enter Last Name of Head Incharge : ')
    max_capacity = int(input('Enter max capacity of welfare home : '))
    pwd = input('Enter password : ')
    if(pin_code<0):
        raise Exception('Invalid pin_code')
    query = 'call insert_new_welfare_home(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)'
    cursor.execute(query, (name, house_no, locality, pin_code, state, contact_details, head_incharge_first_name, head_incharge_last_name, max_capacity, pwd))
    print(cursor.fetchall())
except Error as e:
    print(e)
