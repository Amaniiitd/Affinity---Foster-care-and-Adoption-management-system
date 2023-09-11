create table child(
child_ID int,
first_name varchar(50) not null,
last_name varchar(50),
date_of_birth date,
check (datediff(date_of_birth+1,date_of_birth)>0),
sex enum('M','F','O'),
religion varchar(50),
blood_group enum("A+","A-","B+","B-","AB+","AB-","O+","O-","Other"),
skin_color varchar(20),
biological_parent1_first_name varchar(50),
biological_parent1_last_name varchar(50),
biological_parent2_first_name varchar(50),
biological_parent2_last_name varchar(50),
status enum("none","fostered","adopted"),
medical_condition enum("none","mentally challenged","physically challenged","both"),
PRIMARY KEY(child_ID)
#foreign key (welfare_home_ID) references welfareHome(welfare_home_ID)
);
#drop table child;
#select * from child;

create table welfare_home(
welfare_home_ID int,
name varchar(50) not null,
house_no int,
check (house_no>=0),
locality varchar(50),
pin_code int not null,
check(pin_code>0),
state varchar(40) not null,
contact_details varchar(10) unique,
head_incharge_first_name varchar(50),
head_incharge_last_name varchar(50),
max_capacity int not null,
check(max_capacity>0),
current_capacity int not null,
check(current_capacity>=0 and current_capacity<=max_capacity),
primary key(welfare_home_ID)
);
#drop table welfare_home;
#select * from welfare_home;