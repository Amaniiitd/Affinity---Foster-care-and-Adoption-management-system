-- Siblings Child view 
CREATE VIEW sibling_child AS
    SELECT 
        first_name,
        last_name,
        FLOOR((CURDATE() - date_of_birth) / 10000) AS 'AGE',
        sex,
        religion,
        blood_group,
        skin_color,
        medical_condition,
        siblings.sibling_ID
    FROM
        child
            INNER JOIN
        siblings ON siblings.children_ID = child.child_ID
    WHERE
        status = 'none';

-- Only Child view 
CREATE VIEW only_child AS
    SELECT 
        first_name,
        last_name,
        FLOOR((CURDATE() - date_of_birth) / 10000) AS 'AGE',
        sex,
        religion,
        blood_group,
        skin_color,
        medical_condition
    FROM
        child
    WHERE
        status = 'none'
           AND NOT EXISTS( SELECT 
            child_ID
        FROM
            siblings
        WHERE
            siblings.children_ID = child.child_ID);  
--  1. role_ap
create role role_ap;
grant visitor to role_ap;

-- grant select on children to role_ap;
grant select on sibling_child to role_ap;
grant select on only_child to role_ap;
CREATE VIEW ap_view AS
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
        adoptive_parent
    WHERE
        ap_id = SUBSTRING_INDEX(USER(), '@', 1);
   
grant select (ap_ID,
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
        preference) on ap_view to role_ap;
grant update (
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
        preference) on ap_view to role_ap;
        
CREATE VIEW own_child_view_ap AS
    SELECT 
        first_name,
        last_name,
        date_of_birth,
        sex,
        religion,
        blood_group,
        skin_color,
        biological_parent1_first_name,
        biological_parent1_last_name,
        biological_parent2_first_name,
        biological_parent2_last_name,
        medical_condition
    FROM
        child
    WHERE
        child_id IN (SELECT 
                child_id
            FROM
                adopts
            WHERE
                ap_id = SUBSTRING_INDEX(USER(), '@', 1));
grant select on own_child_view_ap to role_ap;

CREATE VIEW own_child_welfare_home_ap AS
    SELECT 
        name, house_no, locality, pin_code, state, contact_details
    FROM
        welfare_home
    WHERE
        welfare_home_ID IN (SELECT 
                welfare_home_ID
            FROM
                child
            WHERE
                child_ID IN (SELECT 
                        child_ID
                    FROM
                        adopts
                    WHERE
                        ap_ID = SUBSTRING_INDEX(USER(), '@', 1)));
grant select on own_child_welfare_home_ap to role_ap;

--  2. role_fp
create role role_fp;
grant visitor to role_fp;

grant select on sibling_child to role_fp;
grant select on only_child to role_fp;
CREATE VIEW fp_view AS
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
        fostering_parent
    WHERE
        fp_id = SUBSTRING_INDEX(USER(), '@', 1);
        
grant select (fp_ID,
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
        preference) on fp_view to role_fp;
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
        preference) on fp_view to role_fp;
        
CREATE VIEW own_child_view_fp AS
    SELECT 
        first_name,
        last_name,
        date_of_birth,
        sex,
        religion,
        blood_group,
        skin_color,
        biological_parent1_first_name,
        biological_parent1_last_name,
        biological_parent2_first_name,
        biological_parent2_last_name,
        medical_condition
    FROM
        child
    WHERE
        child_id IN (SELECT 
                child_id
            FROM
                fosters
            WHERE
                fp_id = SUBSTRING_INDEX(USER(), '@', 1));
grant select on own_child_view_fp to role_fp;

CREATE VIEW own_child_welfare_home_fp AS
    SELECT 
        name, house_no, locality, pin_code, state, contact_details
    FROM
        welfare_home
    WHERE
        welfare_home_ID IN (SELECT 
                welfare_home_ID
            FROM
                child
            WHERE
                child_ID IN (SELECT 
                        child_ID
                    FROM
                        fosters
                    WHERE
                        fp_ID = SUBSTRING_INDEX(USER(), '@', 1)));
                        
grant select on own_child_welfare_home_fp to role_fp;

CREATE VIEW own_allowances AS
    SELECT 
        W.name,
        W.house_no,
        W.locality,
        W.pin_code,
        W.state,
        W.contact_details,
        A.T_ID,
        A.al_date,
        A.amount
    FROM
        allowance A
            INNER JOIN
        Welfare_home W ON A.welfare_home_ID = W.welfare_home_ID
    WHERE
        fp_ID = SUBSTRING_INDEX(USER(), '@', 1);
grant select on own_allowances to role_fp;        

-- 3. Biological Donors and Government Agencies 
create role  role_biological_donor;
create role role_govt_agency;

grant visitor to  role_biological_donor;
grant insert on temp_child to role_biological_donor;
grant insert on temp_siblings to role_biological_donor;
grant execute on procedure insert_new_child to role_biological_donor;
grant execute on procedure insert_new_sibling_func1 to role_biological_donor;
grant execute on procedure insert_new_sibling_func2 to role_biological_donor;

grant visitor to  role_govt_agency;
grant insert on temp_child to role_govt_agency;
grant insert on temp_siblings to role_govt_agency;
grant execute on procedure insert_new_child to role_govt_agency;
grant execute on procedure insert_new_sibling_func1 to role_govt_agency;
grant execute on procedure insert_new_sibling_func2 to role_govt_agency;

CREATE VIEW bd_view AS
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
        biological_donor
    WHERE
        cr_ID = SUBSTRING_INDEX(USER(), '@', 1);
        
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
        contact_details) on bd_view to role_biological_donor;
grant update (
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
        contact_details) on bd_view to role_biological_donor;

CREATE VIEW ga_view AS
    SELECT 
        cr_ID, house_no, locality, pin_code, state, contact_details, type
    FROM
        govt_agency
    WHERE
        cr_id = SUBSTRING_INDEX(USER(), '@', 1);
        
grant select ( cr_ID,house_no,locality, pin_code, state, contact_details, type) on ga_view to role_govt_agency;
grant update ( house_no,locality, pin_code, state, contact_details, type) on ga_view to role_govt_agency;
        
CREATE VIEW own_child_view_bd AS
    SELECT 
        first_name,
        last_name,
        date_of_birth,
        sex,
        religion,
        blood_group,
        skin_color,
        biological_parent1_first_name,
        biological_parent1_last_name,
        biological_parent2_first_name,
        biological_parent2_last_name,
        status,
        medical_condition,
        name, house_no, locality, pin_code, state, contact_details
    FROM
        child INNER JOIN welfare_home on child.welfare_home_id=welfare_home.welfare_home_id
    WHERE
        child_id IN (SELECT 
                child_id
            FROM
                renounce_bd
            WHERE
                renouncer_id = SUBSTRING_INDEX(USER(), '@', 1));
            
grant select on own_child_view_bd  to role_biological_donor;     
       
CREATE VIEW own_child_view_ga AS
    SELECT 
        first_name,
        last_name,
        date_of_birth,
        sex,
        religion,
        blood_group,
        skin_color,
        biological_parent1_first_name,
        biological_parent1_last_name,
        biological_parent2_first_name,
        biological_parent2_last_name,
        status,
        medical_condition,
         name, house_no, locality, pin_code, state, contact_details
    FROM
        child  INNER JOIN welfare_home on child.welfare_home_id=welfare_home.welfare_home_id
    WHERE
        child_id IN (SELECT 
                child_id
            FROM
                renounce_ga
            WHERE
                renouncer_id = SUBSTRING_INDEX(USER(), '@', 1));

grant select on own_child_view_ga  to role_govt_agency;

CREATE VIEW own_temp_child_view AS
    SELECT 
        first_name,
        last_name,
        date_of_birth,
        sex,
        religion,
        blood_group,
        skin_color,
        biological_parent1_first_name,
        biological_parent1_last_name,
        biological_parent2_first_name,
        biological_parent2_last_name,
        medical_condition
    FROM
        temp_child
    WHERE
        renouncer_id = SUBSTRING_INDEX(USER(), '@', 1);
    
grant select on own_temp_child_view to role_biological_donor;
grant select on own_temp_child_view  to role_govt_agency;

-- 5.  role_welfare_home 
create role role_welfare_home;
		-- info about itself 
CREATE VIEW welfare_home_view AS
    SELECT 
        welfare_home_ID,
        name,
        house_no,
        locality,
        pin_code,
        state,
        contact_details,
        head_incharge_first_name,
        head_incharge_last_name,
        max_capacity,
        current_capacity
    FROM
        welfare_home
    WHERE
        welfare_home_ID = SUBSTRING_INDEX(USER(), '@', 1);
grant select (name,
        house_no,
        locality,
        pin_code,
        state,
        contact_details,
        head_incharge_first_name,
        head_incharge_last_name,
        max_capacity,
        current_capacity) on welfare_home_view to role_welfare_home;
grant update (name,
        house_no,
        locality,
        pin_code,
        state,
        contact_details,
        head_incharge_first_name,
        head_incharge_last_name,
        max_capacity,
        current_capacity) on welfare_home_view to role_welfare_home;
	-- view donations made to it 
CREATE VIEW welfare_home_donation AS
    SELECT 
        T_ID, d_date, amount, method
    FROM
        donation
    WHERE
        welfare_home_ID = SUBSTRING_INDEX(USER(), '@', 1);
grant select on welfare_home_donation to role_welfare_home;

	-- Can see adopts/foster table, add to adopts/foster  table ,delete from adopts/foster  table. 
grant insert, delete on adopts to  role_welfare_home;
grant insert, delete on fosters to  role_welfare_home;
CREATE VIEW welfare_home_adopts AS
    SELECT 
        A.ap_ID,
        a_date,
        ap1_first_name,
        ap1_last_name,
        ap2_first_name,
        ap2_last_name,
        contact_details,
        child_ID
    FROM
        adoptive_parent A
            INNER JOIN
        adopts ON adopts.ap_ID = A.ap_ID
    WHERE
        adopts.child_ID IN (SELECT 
                child_ID
            FROM
                child
            WHERE
                welfare_home_ID = SUBSTRING_INDEX(USER(), '@', 1));
grant select on welfare_home_adopts to role_welfare_home;
	-- view all children in it 
CREATE VIEW welfare_home_children AS
    SELECT 
        *
    FROM
        child
    WHERE
        welfare_home_id = SUBSTRING_INDEX(USER(), '@', 1);
grant select,update on welfare_home_children to role_welfare_home;
	-- view all allowances and make more payments 
grant insert on allowance to role_welfare_home;

CREATE VIEW welfare_home_allowance AS
    SELECT al_date, amount
    FROM
        allowance
    WHERE
        welfare_home_id = SUBSTRING_INDEX(USER(), '@', 1);
 grant select,update  on welfare_home_allowance to role_welfare_home;
--  view applications- adoption / fostering 
grant select on adoptive_parent to role_welfare_home;
grant select on fostering_parent to role_welfare_home;
-- 6.  role_child
-- own info 
-- own foster parent info
-- own foster parent info
create role role_child;
CREATE VIEW child_view AS
    SELECT 
		C.child_ID,
        C.first_name,
        C.last_name,
        C.date_of_birth,
        C.sex,
        C.religion,
        C.blood_group,
        C.skin_color,
        C.biological_parent1_first_name,
        C.biological_parent1_last_name,
        C.biological_parent2_first_name,
        C.biological_parent2_last_name,
        C.status,
        C.medical_condition,
        W.name,
        W.house_no,
        W.locality,
        W.pin_code,
        W.state,
        W.contact_details
    FROM
        child C
            INNER JOIN
        welfare_home W ON C.welfare_home_ID = W.welfare_home_ID
    WHERE
        child_ID = SUBSTRING_INDEX(USER(), '@', 1);
        
grant select (child_ID,
        first_name,
       last_name,
       date_of_birth,
        sex,
        religion,
        blood_group,
        skin_color,
        biological_parent1_first_name,
        biological_parent1_last_name,
        biological_parent2_first_name,
        biological_parent2_last_name,
        status,
        medical_condition,
        name,
        house_no,
        locality,
        pin_code,
        state,
        contact_details)on child_view to role_child;
        
grant update (
        first_name,
       last_name,
        religion,
        medical_condition)on child_view to role_child;
        
CREATE VIEW child_adopt_view AS
    SELECT 
        A.ap1_first_name,
        A.ap1_last_name,
        A.ap2_first_name,
        A.ap2_last_name,
        A.ap1_dob,
        A.ap2_dob,
        A.house_no,
        A.locality,
        A.pin_code,
        A.state,
        A.contact_details,
        A.income_per_annum,
        A.preference,
        adopts.a_date
    FROM
        adoptive_parent A
            INNER JOIN
        adopts ON adopts.ap_ID = A.ap_ID
    WHERE
        adopts.child_ID = SUBSTRING_INDEX(USER(), '@', 1);
        
grant select on child_adopt_view to role_child;

CREATE VIEW child_foster_view AS
    SELECT 
        F.fp1_first_name,
        F.fp1_last_name,
        F.fp2_first_name,
        F.fp2_last_name,
        F.fp1_dob,
        F.fp2_dob,
        F.house_no,
        F.locality,
        F.pin_code,
        F.state,
        F.contact_details,
        F.income_per_annum,
        F.preference,
        fosters.f_date
    FROM
        fostering_parent F
            INNER JOIN
        fosters ON fosters.fp_ID = F.fp_ID
    WHERE
        fosters.child_ID = SUBSTRING_INDEX(USER(), '@', 1);
grant select on child_foster_view to role_child;

	-- apni siblings 
CREATE VIEW child_sibling_view AS
    SELECT 
        C.first_name,
        C.last_name,
        C.date_of_birth,
        C.sex,
        C.religion,
        C.blood_group,
        C.skin_color,
        C.status,
        C.medical_condition
    FROM
        child C
    WHERE
        child_ID IN (SELECT 
                child_ID
            FROM
                siblings
            WHERE
                sibling_ID = (SELECT 
                        sibling_ID
                    FROM
                        siblings
                    WHERE
                        child_ID = SUBSTRING_INDEX(USER(), '@', 1)));
grant select on child_sibling_view to role_child;
-- grant select on children to role_fp
