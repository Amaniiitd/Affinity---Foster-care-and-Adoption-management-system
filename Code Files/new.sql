drop view ga_view;
CREATE VIEW ga_view AS
    SELECT 
        cr_ID, house_no, locality, pin_code, state, contact_details, type
    FROM
        govt_agency
    WHERE
        cr_id = SUBSTRING_INDEX(USER(), '@', 1);
        
grant select ( cr_ID,house_no,locality, pin_code, state, contact_details, type) on ga_view to role_govt_agency;
grant update ( house_no,locality, pin_code, state, contact_details, type) on ga_view to role_govt_agency;
grant execute on procedure insert_new_child to role_govt_agency;
grant execute on procedure insert_new_sibling_func1 to role_govt_agency;
grant execute on procedure insert_new_sibling_func2 to role_govt_agency;

drop view own_child_view_ga;
drop view own_child_view_bd;

drop view own_child_welfare_home_ga;
drop view own_child_welfare_home_bd;

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