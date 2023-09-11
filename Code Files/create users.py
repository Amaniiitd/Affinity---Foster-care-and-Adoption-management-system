import mysql.connector
import sqlite3
import hashlib
mydb = mysql.connector.connect(host = "127.0.0.1", user = "root" , passwd = "12345", port = "3306", database = "affinity")
mycursor=mydb.cursor(buffered=True)
mycursor2=mydb.cursor(buffered=True)
def usercreation(output,role):
    for ids in output:
        currid=ids[0]
        #print(currid)
        mycursor2.execute("select pwd from user_pwd where u_id=%s",(currid,))
        password=mycursor2.fetchone()[0]
        #print(password)
        args=[currid,password,role]
        mycursor.callproc('create_user',args)
        mydb.commit()    
# 1. Welfare Homes
mycursor.execute(" Select welfare_home_id from welfare_home")
output=mycursor.fetchall()
usercreation(output,"role_welfare_home")
# 2. Biological Donors
mycursor.execute(" Select cr_id from biological_donor")
output=mycursor.fetchall()
usercreation(output,"role_biological_donor")
# 3. Govt Agency
mycursor.execute(" Select cr_id from govt_agency")
output=mycursor.fetchall()
usercreation(output,"role_govt_agency")
# 4. Foster Parents
mycursor.execute(" Select fp_id from fostering_parent")
output=mycursor.fetchall()
usercreation(output,"role_fp")
# 5. Adoptive Parents
mycursor.execute(" Select ap_id from adoptive_parent")
output=mycursor.fetchall()
usercreation(output,"role_ap")
