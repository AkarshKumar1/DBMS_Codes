-- Experiment - 7

-- 1. Compute the no. of days remaining in this year.

SELECT DATEDIFF('2026-12-31', CURDATE()) AS Remaininig_Days;

-- 2. Find the highest and lowest salaries and the difference between of them.

SELECT 
    MAX(SAL) AS Maximum_Salary,
    MIN(SAL) AS Minimum_Salary,
    MAX(SAL) - MIN(SAL) AS Salary_Diff
    FROM employee;

-- 3. List employee whose commission is greater than 25 % of their salaries.

SELECT *
      FROM employee
      WHERE 
         COMM > SAL * 0.25;

-- 4. Make a query that displays salary in dollar format.

SELECT 
     CONCAT('$', SAL/91) AS Salary_In_Detail 
     FROM employee;

-- 5. Create a matrix query to display the job, the salary for that job based on department number, and the total salary 
-- for that job for all departments, giving each column an appropriate heading.

SELECT JOB,
     SUM(CASE WHEN DEPTNO = 10 THEN SAL ELSE 0 END) AS Dept_10_Salary,
     SUM(CASE WHEN DEPTNO = 20 THEN SAL ELSE 0 END) AS Dept_20_Salary,
     SUM(CASE WHEN DEPTNO = 30 THEN SAL ELSE 0 END) AS Dept_30_Salary,
     SUM(CASE WHEN DEPTNO = 40 THEN SAL ELSE 0 END) AS Dept_40_Salary,
     SUM(SAL) AS Total_Salary_For_Each_Department
     FROM employee
     GROUP BY JOB;

-- 6. Query that will display the total no of employees, and of that total the number who were hired in 1980,1981,1982 
-- and 1983. Give appropriate column heading.

SELECT YEAR(HIREDATE),
     COUNT(*) AS Total_Employee_Hired_In_That_Year
     FROM employee
     GROUP BY YEAR(HIREDATE);
     
-- 7. Query to get the last Sunday of Any Month.

SELECT
     DATE_SUB(
         LAST_DAY(CURDATE()), 
         INTERVAL(DAYOFWEEK(LAST_DAY(CURDATE())) - 1) DAY) AS Last_Sunday;

-- 8. Display department numbers and total number of employees working in each department.

SELECT DEPTNO,
     COUNT(*) AS Total_Employee_In_each_Department
     FROM employee
     GROUP BY DEPTNO;

-- 9. Display the various jobs and total number of employees within each job group.

SELECT JOB, 
	 COUNT(*) AS Total_Employee_In_each_Job
     FROM employee
     GROUP BY JOB;

-- 10. Display the department numbers and total salary for each department

SELECT DEPTNO,
     SUM(SAL) AS Total_Salary_In_each_Department
     FROM employee
     GROUP BY DEPTNO;