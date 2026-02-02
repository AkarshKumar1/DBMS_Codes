# DataBase Management System (DBMS)

---

## 1. Table as per given constraints

### Table: EMPLOYEE

| Column Name | Data Type | Size | Attributes |
|------------|----------|------|------------|
| EMPNO | Number | 4 | Primary Key |
| ENAME | Varchar2 | 20 | Not Null |
| JOB | Varchar2 | 20 |  |
| MGR | Number | 4 |  |
| HIREDATE | Date |  |  |
| SAL | Number | 10 |  |
| COMM | Number | 7 |  |
| DEPTNO | Number | 2 | Foreign Key |

---

### Table: DEPARTMENT

| Column Name | Data Type | Size | Attributes |
|------------|----------|------|------------|
| Deptno | Number | 2 | Primary Key |
| Dname | Varchar2 | 15 | Not Null |

---

### Values in the table

#### EMPLOYEE

| EMPNO | ENAME | JOB | MGR | HIREDATE | SAL | COMM | DEPTNO |
|------|------|------|------|----------|------|------|--------|
| 7369 | SMITH | CLERK | 7902 | 17-Dec-80 | 800 |  | 20 |
| 7499 | ALLEN | SALESMAN | 7698 | 20-Feb-81 | 1600 | 300 | 30 |
| 7521 | WARD | SALESMAN | 7698 | 22-Feb-81 | 1250 | 300 | 30 |
| 7566 | JONES | MANAGER | 7839 | 02-Apr-81 | 2975 |  | 20 |
| 7654 | MARTIN | SALESMAN | 7698 | 28-Sep-81 | 1250 | 1400 | 30 |
| 7698 | BLAKE | MANAGER | 7839 | 01-May-81 | 2850 |  | 30 |
| 7782 | CLARK | MANAGER | 7839 | 09-Jun-81 | 2450 |  | 20 |
| 7788 | SCOTT | ANALYST | 7566 | 09-Dec-82 | 3000 |  | 40 |
| 7839 | KING | PRESIDENT |  | 17-Nov-81 | 5000 |  | 20 |
| 7844 | TURNER | SALESMAN | 7698 | 08-Sep-81 | 1500 | 0 | 30 |
| 7876 | ADAMS | CLERK | 7788 | 12-Jan-83 | 1100 |  | 20 |
| 7900 | JAMES | CLERK | 7698 | 03-Dec-81 | 950 |  | 30 |
| 7902 | FORD | ANALYST | 7566 | 03-Dec-81 | 3000 |  | 20 |
| 7934 | MILLER | CLERK | 7782 | 23-Jan-82 | 1300 |  | 10 |
---

### Table: DEPARTMENT (Values)

| DEPTNO | DNAME |
|------|------------|
| 10 | RESEARCH |
| 20 | ACCOUNTING |
| 30 | SALES |
| 40 | OPERATIONS |

---

## Perform following Query


| S.No | Program | CO No |
|-----|--------|-------|
| 1 |1. Create `Employee_master` table with data using Employee table.<br>2. Delete all records into `Employee_master` whose DeptNo is 10.<br>3. Update 10% salary of employees of DEPTNO 20 into `Employee_master`.<br>4. Alter SAL with size 10,2 in `Employee_master`.<br>5. Drop `Employee_master` table. | 1,2 |
| 2 |1. List all distinct jobs in Employee.<br>2. List all information about employee in Department Number 30.<br>3. Find all department numbers with department names greater than 20.<br>4. Find all information about all managers as well as clerks in department 30.<br>5. List employee name, employee number and department of all clerks.<br>6. Find all managers not in department 30.<br>7. List employees in department 10 who are not managers or clerks.<br>8. Find employees and jobs earning between 1200 and 1400.<br>9. List name and department number of clerks, analyst or salesman.<br>10. List name and department number of employees whose names begin with M. | 1,2 |
| 3 |1. List all employees and jobs in Department **30** in descending order by salary.<br>2. List job and Department Number of employees whose name are **five letters long**, begin with **“A”** and end with **“N”**.<br>3. Display the name of employees whose name start with alphabet **S**.<br>4. Display the names of employees whose name ends with alphabet **S**.<br>5. Display the names of employees working in department number **10 or 20 or 40** or employees working as **clerks, salesman or analyst**.<br>6. Display employee number and names for employees who earn commission.<br>7. Display employee number and total salary for each employee.<br>8. Display employee number and **annual salary** for each employee.<br>9. Display the names of all employees working as clerks and drawing a salary more than **3000**.<br>10. Display the names of employees who are working as clerk, salesman or analyst and drawing a salary more than **3000**. | 1,2 |
| 4️ |1. Display the list of employees who have joined the company before **30th June 1980** or after **31st Dec 1981**.<br>2. Display the names of employees whose names have **second alphabet ‘A’** in their names.<br>3. Display the names of employees whose name is exactly **five characters** in length.<br>4. Display the names of employees who are not working as salesman or clerk or analyst.<br>5. Display the name of the employee along with their **annual salary (sal × 12)**. The highest salary should appear first.<br>6. Display name, sal, hra, pf, da, totalsal for each employee.<br>- hra = 15% of sal<br>- da = 10% of sal<br>- pf = 5% of sal<br>- totalsal = (sal + hra + da) − pf<br>7. Update the salary of each employee by **10% increment** who are not eligible for commission.<br>8. Display those employees whose salary is more than **3000** after giving **20% increment**.<br>9. Display those employees whose salary contains at least **3 digits**. | 1,2 |
| 5 |1. Total number of employees.<br>2. Total salary paid to all employees.<br>3. Maximum salary.<br>4. Minimum salary.<br>5. Average salary.<br>6. Maximum salary paid to clerk.<br>7. Maximum salary paid in department 20.<br>8. Minimum salary paid to salesman.<br>9. Average salary drawn by managers.<br>10. Total salary drawn by analyst in department 40.<br>11. Display names in uppercase.<br>12. Display names in lowercase.<br>13. Display names in proper case.<br>14. Display length of your name.<br>15. Display length of all employee names. | 1,2 |
| 6 |1. Display empno, ename and dept name using DECODE.<br>2. Display your age in days.<br>3. Display your age in months.<br>4. Display current date as “15th August Friday Nineteen Ninety-Seven”.<br>5. Display formatted output for each row.<br>6. Display Scott joining date in words.<br>7. Find nearest Saturday after current date.<br>8. Display current time.<br>9. Display date three months before today.<br>10. Employees joined in December.<br>11. First two characters of hiredate equals last two characters of salary.<br>12. 10% salary equals year of joining.<br>13. Employees joined before 15th of month.<br>14. Employees joined before 15th.<br>15. Employees whose joining date is available in deptno. | 1,2 |
| 7 |1. Number of days remaining in this year.<br>2. Highest, lowest salary and difference.<br>3. Commission greater than 25% of salary.<br>4. Display salary in dollar format.<br>5. Matrix query showing job, salary by department and total salary.<br>6. Employees hired in 1980, 1981, 1982 and 1983.<br>7. Last Sunday of any month.<br>8. Total employees in each department.<br>9. Total employees in each job group.<br>10. Total salary in each department. | 1,2 |
| 8 |1. Employees with department name.<br>2. Employees whose manager is JONES.<br>3. Employee name, job, dept name, manager and grade department-wise.<br>4. All employees except clerk sorted by salary.<br>5. Employees with or without manager.<br>6. Annual salary 36000 or not clerks.<br>7. Annual salary 30000 and not clerks.<br>8. Employee and manager details with no manager shown.<br>9. Department name, dept no and sum of salary.<br>10. Employee number, name and department location.<br>11. Employee name and department name. | 1,2 |
| 9 |1. Employee earning highest salary.<br>2. Highest paid clerk.<br>3. Salesman earning more than any clerk.<br>4. Clerks earning more than James or less than Scott.<br>5. Employees earning more than James or Scott.<br>6. Highest salary in each department.<br>7. Highest salary in each job group.<br>8. Employees working in accounting department.<br>9. Employees working in Chicago.<br>10. Job groups with total salary greater than maximum manager salary. | 1,2 |
| 10 |1. Dept 10 salary greater than any other department.<br>2. Dept 10 salary greater than all other departments.<br>3. Sales department with grade 3.<br>4. Employees who are not managers but manage someone.<br>5. Employees whose manager is JONES.<br>6. Employees working in sales department.<br>7. Salary between 2000 and 5000 in Chicago.<br>8. Salary greater than manager salary.<br>9. Employees working in same department as manager.<br>10. Dept 10 or 30, grade not 4, joined before 31-Dec-82. | 1,2 |
| 11 |1. Delete employees joined before 31-Dec-82 in New York or Chicago.<br>2. Managers with department and location.<br>3. Salary of Ford equals highest salary of grade.<br>4. Top five earners.<br>5. Employees with highest salary.<br>6. Salary equals average of max and min salary.<br>7. Departments with at least three employees.<br>8. Managers earning more than company average.<br>9. Managers earning more than average of their employees.<br>10. Employees with net pay greater than or equal to any salary. | 1,2 |
| 12 |1. Salary less than manager but greater than other managers.<br>2. Count employees earning more than manager.<br>3. Managers not working under president.<br>4. Delete departments with no employees.<br>5. Delete employees with invalid deptno.<br>6. Salary out of grade table.<br>7. Employee with highest net pay.<br>8. Employees in sales or research.<br>9. Grade of JONES.<br>10. Department name length equals number of employees. | 1,2 |
| 13 | Study and implementation of ROLLBACK, COMMIT and SAVEPOINT. | 1,2,3 |
| 14 | Creating **Database / Table Space**<br>- Managing Users: Create User, Delete User<br>- Managing Roles:  Grant, Revoke | 1,2,3 |
| 15 |Study and implementation of database backup and recovery commands. | 1,2,3 |

