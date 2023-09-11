use affinity;

grant all on affinity to "administration"@localhost;
-- create user '0000'@localhost identified by "0";
-- grant visitor to "0000"@localhost;
-- set default role all to "0000"@localhost;
create role temp_ga;
create role temp_ap;
create role temp_fp;
create role temp_bd;
create role temp_wh;

create role visitor;
grant visitor to temp_ga;
grant visitor to temp_ap;
grant visitor to temp_fp;
grant visitor to temp_bd;
grant visitor to temp_wh;

-- 1. Role temp_ap
CREATE VIEW temp_ap_view1 AS
    SELECT 
        ap_ID,
        ap1_first_name,
        ap1_last_name,
        ap2_first_name,
        ap2_last_name,
        ap1_dob,
        ap2_dob,
        house_no,
        locality,
        pin_code,
        state,
        contact_details,
        income_per_annum,
        preference
    FROM
        temp_adoptive_parent
    WHERE
        ap_id = SUBSTRING_INDEX(USER(), '@', 1);
        
grant select (ap_ID, ap1_first_name,ap1_last_name,
ap2_first_name ,
ap2_last_name,
ap1_dob,
ap2_dob,
house_no,
locality,
pin_code,
state,
contact_details,
income_per_annum ,preference) on temp_ap_view1 to temp_ap;

grant update ( ap1_first_name,ap1_last_name,
ap2_first_name ,
ap2_last_name,
ap1_dob,
ap2_dob,
house_no,
locality,
pin_code,
state,
contact_details,
income_per_annum ,preference) on temp_ap_view1 to temp_ap;
-- 2. Visitor 
grant select (
name,
house_no,
locality,
pin_code,
state,
contact_details,
head_incharge_first_name,
head_incharge_last_name,
max_capacity,
current_capacity)
on welfare_home  to visitor;

CREATE VIEW their_donation_view AS
    SELECT 
        T_ID,d_date,amount,method, W.name 
    FROM
        donation D inner Join welfare_home W on  W.welfare_home_id= D.welfare_home_id
    WHERE
        D.donor_id = SUBSTRING_INDEX(USER(), '@', 1);

grant select on their_donation_view to visitor;
grant insert on donation to visitor;
grant select  (first_name,date_of_birth) on  child to visitor;

-- 3. Role temp_fp

CREATE VIEW temp_fp_view1 AS
    SELECT 
        fp_ID,
        fp1_first_name,
        fp1_last_name,
        fp2_first_name,
        fp2_last_name,
        fp1_dob,
        fp2_dob,
        house_no,
        locality,
        pin_code,
        state,
        contact_details,
        income_per_annum,
        preference
    FROM
        temp_fostering_parent
    WHERE
        fp_id = SUBSTRING_INDEX(USER(), '@', 1);
        
grant select(fp_ID,
        fp1_first_name,
        fp1_last_name,
        fp2_first_name,
        fp2_last_name,
        fp1_dob,
        fp2_dob,
        house_no,
        locality,
        pin_code,
        state,
        contact_details,
        income_per_annum,
        preference) on temp_fp_view1 to temp_fp;
grant update (
        fp1_first_name,
        fp1_last_name,
        fp2_first_name,
        fp2_last_name,
        fp1_dob,
        fp2_dob,
        house_no,
        locality,
        pin_code,
        state,
        contact_details,
        income_per_annum,
        preference) on temp_fp_view1 to temp_fp;

-- 4.  Role of temp_bd
--  Can see/update its own info and status 

CREATE VIEW temp_bd_view1 AS
    SELECT 
        cr_ID,
        bd1_first_name,
        bd1_last_name,
        bd2_first_name,
        bd2_last_name,
        bd1_dob,
        bd2_dob,
        house_no,
        locality,
        pin_code,
        state,
        contact_details
    FROM
        temp_biological_donor
    WHERE
        cr_id = SUBSTRING_INDEX(USER(), '@', 1);
grant select (cr_ID,
        bd1_first_name,
        bd1_last_name,
        bd2_first_name,
        bd2_last_name,
        bd1_dob,
        bd2_dob,
        house_no,
        locality,
        pin_code,
        state,
        contact_details) on temp_bd_view1 to temp_bd;      
grant update( bd1_first_name,
        bd1_last_name,
        bd2_first_name,
        bd2_last_name,
        bd1_dob,
        bd2_dob,
        house_no,
        locality,
        pin_code,
        state,
        contact_details) on temp_bd_view1 to temp_bd;

-- 5. Role of temp_ga

CREATE VIEW temp_ga_view1 AS
    SELECT 
        cr_ID,house_no, locality, pin_code, state, contact_details, type
    FROM
        temp_govt_agency
    WHERE
        cr_id = SUBSTRING_INDEX(USER(), '@', 1);
grant select ( cr_ID,house_no, locality, pin_code, state, contact_details, type)on temp_ga_view1 to temp_ga;
grant update ( house_no, locality, pin_code, state, contact_details, type)on temp_ga_view1 to temp_ga;
revoke update(cr_ID)  on temp_ga_view1 from temp_ga;
-- Role of temp_wh 
grant select (welfare_home_ID,
name,
house_no,
locality,
pin_code,
state ,
contact_details,
head_incharge_first_name,
head_incharge_last_name,
max_capacity) on temp_welfare_home to temp_wh;

grant update (
name,
house_no,
locality,
pin_code,
state ,
contact_details,
head_incharge_first_name,
head_incharge_last_name,
max_capacity) on temp_welfare_home to temp_wh;
