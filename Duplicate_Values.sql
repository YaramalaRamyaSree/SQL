/*
leetcode link - https://leetcode.com/problems/duplicate-emails/
*/

#Approch 1: using self join and conditions 
SELECT DISTINCT p1.Email FROM Person p1, Person p2 WHERE 
p1.Email=p2.Email and p1.id!=p2.id;

#Approch 2: using group by and having 
SELECT Email FROM Person group by Email having count(Email)>1;

#Approch 3: used temporary table and found duplicate emails from table person 
select Email from
(
  select Email, count(Email) as num
  from Person
  group by Email
) as email_table
where num > 1
;
