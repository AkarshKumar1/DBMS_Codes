-- Experiment - 8

USE company;

-- 1. Display all employees with their dept name.

SELECT e.ENAME, d.DNAME
     FROM employee e
		JOIN department d 
            ON e.DEPTNO = d.DEPTNO;
                     
-- 2. Display those employees whose manager names is jones, and also display their manager name.

SELECT e.ENAME AS Employee_Name,
       m.ENAME AS Manager_Name
       FROM employee e
          JOIN employee m
             ON e.MGR = m.EMPNO
                WHERE 
                   m.ENAME = 'Jones';

-- 3. Display employee name, his job, his dept name, his manager name and make out of an under department wise.

SELECT e.ENAME AS Employee_Name,
	   e.JOB AS Employee_Job,
       d.DNAME AS Department_Name,
       m.ENAME AS Manager_Name
       FROM employee e
       JOIN department d
         ON e.DEPTNO = d.DEPTNO
       LEFT JOIN employee m
         ON e.MGR = m.EMPNO
	   ORDER BY e.ename, d.dname ;
       
       

-- 4. List out all the employees name, job, and salary grade and department name for everyone in the company except 
-- ‘clerk’. Sort on salary display the highest salary.

SELECT e.ENAME AS Employee_Name,
       e.JOB AS Employee_Job,
       d.DNAME AS Department_Name,
       e.SAL AS Employee_Salary
       FROM employee e
       JOIN department d 
       ON e.DEPTNO = d.DEPTNO
       WHERE 
          JOB != 'CLERK'
       ORDER BY SAL DESC ;

-- 5. Display employee name, his job and his manager. Display also employees who are without manager.

SELECT e.ENAME AS Employee_Name,
      e.JOB AS Employee_Job,
      m.ENAME AS Manager_Name
      FROM employee e
      LEFT JOIN employee m
      ON m.EMPNO = e.MGR;
      
-- 6. List the employee name, job, annual salary, deptno, dept name and grade who earn 36000 a year or who are not clerks

SElECT e.ENAME AS Employee_Name,
	   e.JOB AS Employee_Job,
       (SAL * 12) AS Employee_Annual_Salary,
       d.DEPTNO AS Department_Number,
       d.DNAME AS Department_Name
       FROM employee e
       JOIN department d
       ON e.DEPTNO = d.DEPTNO;

-- 7. List ename, job, annual sal, deptno, dname and grade who earn 30000 per year and who are not clerks.

SElECT e.ENAME AS Employee_Name,
	   e.JOB AS Employee_Job,
       (SAL * 12) AS Employee_Annual_Salary,
       d.DEPTNO AS Department_Number,
       d.DNAME AS Department_Name
       FROM employee e
       JOIN department d
       ON e.DEPTNO = d.DEPTNO
       WHERE 
          e.JOB !=  'CLERK';
          
-- 8. List out all employees by name and number along with their manager’s name and number 
--    also display ‘no manager’ who has no manager

SELECT e.EMPNO AS Employee_ID, 
   e.ENAME AS Employee_Name, 
   m.EMPNO AS Manager_ID,
   COALESCE(m.ENAME, 'No Manager') AS Manager_Name
   FROM employee e 
   LEFT JOIN employee m
   ON m.EMPNO = e.MGR;

-- 9. Select dept name, dept no and sum of sal

SELECT d.DNAME, d.DEPTNO,
   SUM(SAL) AS Total_Salary
   FROM department d
      JOIN employee e
         ON e.DEPTNO = d.DEPTNO
         GROUP BY d.DEPTNO;
   
-- 10. Display employee number, name and location of the department in which he is working

SELECT e.ENAME, d.DNAME, e.EMPNO
     FROM employee e
		JOIN department d 
            ON e.DEPTNO = d.DEPTNO;
            
-- 11. Display employee name and department name for each employee.

SELECT e.ENAME, d.DNAME
     FROM employee e
		JOIN department d 
            ON e.DEPTNO = d.DEPTNO;
