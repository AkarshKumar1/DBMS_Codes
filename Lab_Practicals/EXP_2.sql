-- Exp 2 
-- Perform Following Query using Employee Table. (Retrieving Data)

-- 1. List all distinct job in Employee.

SELECT 
    distinct 
    job 
    from employee;
    
-- 2. List all information about employee in Department Number 30

SELECT *
    FROM employee
	WHERE
        DEPTNO = 30;
	
-- 3. Find all department number with department names greater than 20.    
        
SELECT *
    FROM employee
	WHERE
        DEPTNO > 20;
                
-- 4. Find all information about all the managers as well as the clerks in department 30.
   
   SELECT *
        from employee
        WHERE
           job in ('MANAGER','CLERK') 
           AND 
           DEPTNO = 30;
           
-- 5. List the Employee name, Employee numbers and department of all clerks
  
	SELECT 
        ENAME,
        EMPNO,
        DEPTNO
        from employee
        WHERE 
            job = 'CLERK';
            
-- 6. Find all managers not in department 30.

SELECT *
    FROM employee
    where 
        job = 'MANAGER'
        AND 
        DEPTNO <> 30;  -- " <> " OPERATOR is called not logical operetor which is used in sql instead of  " != "

-- 7. List information about all Employees in department 10 who are not manager or clerks.

SELECT *
    from employee
    WHERE 
        JOB not in ('MANAGER','CLERK')
        AND
        DEPTNO = 10;
        
-- 8. Find Employees and jobs earning between 1200 and 1400.

SELECT *
    from employee
    WHERE 
       SAL BETWEEN 1200 and 1400;

-- 9. List Name and Department Number of employee who are clerks, analyst or salesman.

SELECT 
    ENAME,
    DEPTNO
    from employee
    WHERE 
        JOB IN ('CLERK', 'SALESMAN', 'ANALYST');
        
-- 10. List Name and Department Number of employee whose names began with M.
            
SELECT 
    ENAME, 
    DEPTNO
    from employee                -- LIKE operator is used to search for a specified pattern in a column.
    WHERE                        -- '%M' is used to find values that ends with the letter M.
        ENAME LIKE 'M%';         -- 'M%' is used to find values that start with the letter M.
          