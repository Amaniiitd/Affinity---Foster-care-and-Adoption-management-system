#Top performing welfare homes
SELECT
  Row_number() OVER(ORDER BY COUNT(*) DESC) AS ranking, welfare_home_ID,
  COUNT(*) AS 'No of children who succesfully found a care-taker'
FROM affinity.child
WHERE status='fostered' or status='adopted'
GROUP BY welfare_home_ID;

#Total available beds
SELECT sum(max_capacity-current_capacity) as 'Total available beds'
FROM affinity.welfare_home;

#Welfarehome that received max donation
SELECT Row_number() OVER(ORDER BY SUM(amount) DESC) AS Ranking, welfare_home_id, SUM(amount) AS 'Total donation received'
FROM affinity.donation
Group BY welfare_home_ID;

#Welfarehome that received max donation in the past month
SELECT Row_number() OVER(ORDER BY SUM(amount) DESC) AS Ranking, welfare_home_id, SUM(amount) AS 'Donation received in the past month'
FROM (SELECT *,DATEDIFF(curdate(),d_date) FROM affinity.donation Having DATEDIFF(curdate(),d_date)<32) as a1
Group BY welfare_home_ID;

#Welfarehome that received max donation in the past year
SELECT Row_number() OVER(ORDER BY SUM(amount) DESC) AS Ranking, welfare_home_id, SUM(amount) AS 'Donation received in the past year'
FROM (SELECT *,DATEDIFF(curdate(),d_date) FROM affinity.donation Having DATEDIFF(curdate(),d_date)<366) as a1
Group BY welfare_home_ID;

#Average donation by donor
SELECT AVG(amount) as 'Average Donation'
FROM affinity.donation;


#Average donation of welfare home wise
SELECT AVG(Total_donation_received) as "Average donation - welfare home wise"
From (SELECT welfare_home_ID, sum(amount) as Total_donation_received FROM affinity.donation GROUP BY welfare_home_ID) as a1;

#Welfarehome with highest need of donation based on current capacity
SELECT Row_number() OVER(ORDER BY (Total_donation_received/current_capacity)) AS 'Neediness Ranking', welfare_home_id, round((Total_donation_received/current_capacity),0) AS 'Budget per child', current_capacity, total_donation_received
FROM (SELECT welfare_home_id, SUM(amount) AS Total_donation_received FROM affinity.donation Group BY welfare_home_ID) AS a1  
	  NATURAL JOIN
	 (SELECT welfare_home_id,current_capacity From affinity.welfare_home AS a2) AS a3;
     
#Welfare homes that need to be filled first, CWA can refer to this table while assigning a child to welfare home
SELECT Row_number() OVER(ORDER BY (Total_Budget/vacancies) DESC) AS 'Child Filling Priority', welfare_home_id, round((Total_Budget/vacancies),0) AS 'Surplus Budget per child', vacancies, total_budget
FROM (SELECT welfare_home_id, SUM(amount) AS Total_Budget FROM affinity.donation Group BY welfare_home_ID) AS a1  
	  NATURAL JOIN
	 (SELECT welfare_home_id,(max_capacity-current_capacity) as vacancies From affinity.welfare_home AS a2) AS a3;
