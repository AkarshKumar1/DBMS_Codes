-- Experiment - 6
use company;
-- 1. Display empno, ename, deptno from employee table. Instead of display department numbers display the related 
-- department name (Use decode function).

SELECT EMPNO, ENAME,
     CASE DEPTNO 
          WHEN 10 THEN 'RESEARCH'
          WHEN 20 THEN 'ACCOUNTING'
          WHEN 30 THEN 'SALES'
          WHEN 40 THEN 'OPERATIONS'
          ELSE 'UNKNOWN'
     END AS Department_Name 
     FROM employee;

-- 2. Display your age in days.

-- DATEDIFF -> Returns the no. of days between two dates 
SELECT DATEDIFF(CURDATE(), '2006-08-02')AS age_in_days;

-- 3. Display your age in months.

-- TIMESTAMPDIFF() -> Returns the difference between two dates in a specified unit (month, year, day, etc)
-- we can also find the seconds, minutes, hours using this function(for which we have to use CURRENT_TIME() command)

SELECT TIMESTAMPDIFF(MONTH, '2006-08-02', CURRENT_DATE()) AS age_in_months;

-- 4. Display the current date as 15th August Friday Nineteen Ninety-Seven.

-- 1st way to solve this problem
SELECT CONCAT(
     DAY(CURDATE()),
     CASE
          WHEN DAY(CURDATE()) IN (1,11,21) THEN 'st '
          WHEN DAY(CURDATE()) IN (2,12,22) THEN 'nd '
          WHEN DAY(CURDATE()) IN (3,13,23) THEN 'rd '
          ELSE 'th '
	  END,
      DATE_FORMAT(CURDATE(), '%M %W %Y')
      ) AS formatted_date;

-- 2nd way to solve this problem
SELECT DATE_FORMAT(CURDATE(), '%D, %M, %W, %Y') AS Formatted_Date;

-- 5. Display the following output for each row from employee table.

SELECT CONCAT(
     ENAME, ' Has Joined the Company on ',
     DATE_FORMAT(HIREDATE, '%W, %D %M, %Y')) AS Emp_Info
     FROM employee;

-- 6. Scott has joined the company on Wednesday 13th August Nineteen Ninety.

SELECT 
	ENAME, ' Has Joined the Company on ',
     DATE_FORMAT(HIREDATE, '%W, %D %M, %Y') AS Emp_Info
     FROM employee
     WHERE
        ENAME = 'Scott';

-- 7. Find the date for nearest Saturday after current date.

SELECT 
     DATE_ADD(CURDATE(), 
     INTERVAL 7-DAYOFWEEK(CURDATE()) +
	 (CASE 
        WHEN DAYOFWEEK(CURDATE()) = 7 THEN 7
        ELSE 0
        END) DAY) AS Next_Saturday;
        
        
-- 8. Display current time.

SELECT CURRENT_TIME() AS right_now_time; 

-- 9. Display the date three months Before the current date

-- 1st way to solve this problem
SELECT DATE_SUB(CURDATE(), INTERVAL 3 MONTH)AS Past_Date;

-- 2nd way to solve this problem
SELECT DATE_ADD(CURDATE(), INTERVAL -3 MONTH)AS Past_Date;

-- 10. Display those employees who joined in the company in the month of Dec.

SELECT * FROM employee WHERE MONTH(HIREDATE) = 12;

-- 11. Display those employees whose first 2 characters from hire date -last 2 characters of salary.



-- 12. Display those employees whose 10% of salary is equal to the year of joining.

-- 1st way to solve this problem
SELECT * FROM employee WHERE SAL * 0.10 = YEAR(HIREDATE);


-- 2nd way to solve this problem
SELECT * FROM employee WHERE DATE_FORMAT(HIREDATE, '%Y') =  0.10 * SAL;

-- 3rd way to solve this problem
SELECT * 
    FROM employee 
    WHERE 
        DATE_FORMAT(HIREDATE, '%y') =  0.10 * SAL;

-- 13. Display those employees who joined the company before 15 of the months.

SELECT * 
     FROM employee 
	 WHERE 
        DAY(HIREDATE) < 15;

-- 14. Display those employees who has joined before 15th of the month.

SELECT * 
     FROM employee 
     WHERE 
         DATE_FORMAT(HIREDATE, '%d') < 15;

-- 15. Display those employees whose joining DATE is available in deptno

SELECT * 
    FROM employee 
    WHERE 
        DAY(HIREDATE) IN ('10', '20', '30', '40');