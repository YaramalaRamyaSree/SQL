/*
leetcode link -https://leetcode.com/problems/department-highest-salary/
*/

/*Print all employees who have highest salary in each department there may be a case in suppose IT department has two or more employees having same highest salary */

SELECT Department.Name AS Department , Employee.Name AS Employee ,Salary FROM  EMPLOYEE
JOIN Department ON Employee.departmentId=Department.id
WHERE (DepartmentId,Salary ) IN
(SELECT DepartmentId, MAX(Salary) FROM Employee GROUP BY DepartmentId);
