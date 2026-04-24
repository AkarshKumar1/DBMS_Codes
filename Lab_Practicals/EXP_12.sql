-- Experiment - 12

USE company; 

-- 1. Display those employees whose salary is less than his manager but more than salary of any other managers.

SELECT e.*
FROM employee e
JOIN employee m ON e.MGR = m.EMPNO
WHERE 
    e.SAL < m.SAL
    AND e.SAL > ANY (SELECT SAL FROM employee 
					 WHERE 
                        EMPNO IN (SELECT DISTINCT MGR FROM employee WHERE MGR IS NOT NULL));
                        
-- 2. Find out the number of employees whose salary is greater than their manager salary?

SELECT COUNT(*) AS Total_Employees 
FROM employee e
JOIN employee m ON e.MGR = m.EMPNO
WHERE 
    e.SAL > m.SAL;

-- 3. Display those managers who are not working under president but they are working under any other manager?

SELECT *
FROM employee e
WHERE 
    e.EMPNO IN (SELECT DISTINCT MGR FROM employee WHERE MGR IS NOT NULL)
    AND 
    e.MGR IS NOT NULL
    AND 
    e.MGR NOT IN (SELECT EMPNO FROM employee WHERE JOB = 'PRESIDENT');

-- 4. Delete those department where no employee working?

DELETE FROM department
WHERE 
   DEPTNO NOT IN (SELECT DISTINCT DEPTNO FROM employee);

-- 5. Delete those records from emp table whose deptno not available in dept table?

-- 1st method 
DELETE FROM employee
WHERE 
	DEPTNO NOT IN (SELECT DISTINCT DEPTNO FROM department);
    
-- 2nd method 											  -- use only if it is necessary as it uses a new function
DELETE FROM employee
WHERE NOT EXISTS (
    SELECT 1 
    FROM department d 
    WHERE d.DEPTNO = employee.DEPTNO
);

-- 6. Display those earners whose salary is out of the grade available in sal grade table?

-- 7. Display employee name, sal, comm. And whose net pay is greater than any other in the company?

SELECT ENAME, SAL, COMM, (SAL + COALESCE(COMM,0)) AS NET_PAY
FROM employee
WHERE (SAL + COALESCE(COMM,0)) = (SELECT MAX(SAL + COALESCE(COMM,0)) FROM employee);

-- 8. Display those employees who are working in sales or research?

SELECT e.*
FROM employee e 
JOIN department d ON e.DEPTNO = d.DEPTNO 
WHERE 
    d.DNAME IN ('SALES', 'RESEARCH');

-- 9. Display the grade of jones?
-- 10. Display the department name the no of characters of which is equal to no of employees in any other department?

SELECT d.DNAME
FROM department d
WHERE 
   LENGTH(d.DNAME) = ANY (SELECT COUNT(*) FROM employee e WHERE e.DEPTNO <> d.DEPTNO GROUP BY e.DEPTNO);