/*
leetcode link - https://leetcode.com/problems/employees-earning-more-than-their-managers/
*/


# u could even use AND instead of WHERE 
SELECT e1.Name as Employee 
FROM employee e1 join employee e2 ON e1.ManagerId=e2.Id WHERE e1.salary>e2.salary;
