-- Experiment - 11


-- 1. Delete those employees who joined the company before 31- dec-82 while there dept location is 
-- ‘new york’ or ‘chicago’.

DELETE FROM employee
WHERE EMPNO IN (
    SELECT e.EMPNO
    FROM employee e
    JOIN department d ON e.DEPTNO = d.DEPTNO
    WHERE 
       e.HIREDATE < '1982-12-31' IN ('NEW YORK', 'CHICAGO')
);

-- 2. Display employee name, job, deptname, location for all who are working as managers.

SELECT e.ENAME, e.JOB, d.DNAME
FROM employee e
JOIN department d ON e.DEPTNO = d.DEPTNO
WHERE 
   e.JOB = 'MANAGER';

-- 3. Display name and salary of ford if his sal is equal to high sal of his grade.

SELECT ENAME, SAL
FROM employee e
WHERE ENAME = 'FORD'
AND SAL = (
    SELECT MAX(SAL) FROM employee
    WHERE 
       JOB = e.JOB
);
-- 4. Find out the top 5 earner of company.

SELECT ENAME, SAL
FROM employee
ORDER BY SAL DESC
LIMIT 5;

-- 5. Display the name of those employees who are getting highest salary.

SELECT ENAME
FROM employee
WHERE 
   SAL = (SELECT MAX(SAL) FROM employee);

-- 6. Display those employees whose salary is equal to average of maximum and minimum.

SELECT ENAME, SAL
FROM employee
WHERE SAL = (
    (SELECT MAX(SAL) FROM employee) +
    (SELECT MIN(SAL) FROM employee)
) / 2;

-- 7. Display dname where at least 3 are working and display only dname

SELECT d.DNAME
FROM employee e
JOIN department d ON e.DEPTNO = d.DEPTNO
GROUP BY d.DNAME
HAVING 
   COUNT(e.EMPNO) >= 3;

-- 8. Display name of those managers names whose salary is more than average salary of company.

SELECT ENAME
FROM employee
WHERE 
   JOB = 'MANAGER'
   AND 
   SAL > (SELECT AVG(SAL) FROM employee);

-- 9. Display those managers name whose salary is more than an average salary of his employees.

SELECT m.ENAME
FROM employee m
JOIN employee e ON m.EMPNO = e.MGR
GROUP BY m.EMPNO, m.ENAME, m.SAL
HAVING 
    m.SAL > AVG(e.SAL);

-- 10. Display employee name, sal, comm and net pay for those employees whose net pay are greater than or equal to 
-- any other employee salary of the company?

SELECT ENAME, SAL, COMM, (SAL + COALESCE(COMM,0)) AS NET_PAY
FROM employee
WHERE 
   (SAL + COALESCE(COMM,0)) >= ANY (SELECT SAL FROM employee);