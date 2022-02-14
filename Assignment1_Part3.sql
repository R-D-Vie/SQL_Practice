--initiate terminal and identify database

mysql;
USE COMPANY1;

--check how many tables are present
SHOW TABLES;

--shows that tables EMP and DEPT are present


--QUESTION 1: List all Employees whose salary is between 1,000 AND 2,000. 
--Show the Employee Name, Department and Salary

-----necessary to pull and match data from the 2 tables in the COMPANY1 database
SELECT EMP.ENAME, EMP.SAL, DEPT.DNAME --identify columns required from 2 tables
FROM EMP
JOIN DEPT
ON EMP.DEPTNO = DEPT.DEPTNO --join the 2 tables based on the matching department number
WHERE EMP.SAL > 1000 AND EMP.SAL < 2000; --use condition for salary range



--QUESTION 2: Count the number of people in department 30 
--who receive a salary 
--and who receive a commission

-----those who receive a salary
SELECT COUNT(DEPTNO) AS COUNT_DEPT30_SAL --rename column name to be clear on function/purpose of data
FROM EMP
WHERE DEPTNO = '30' AND SAL>0; ---count entries where department number is 30 and where salary is not NULL or 0

-----those who receive a commission
SELECT COUNT(DEPTNO) AS COUNT_DEPT30_COMM ---rename column name to be clear on function/purpose of data
FROM EMP
WHERE DEPTNO = '30' AND COMM>0; ---count entries where department number is 30 and where salary is not NULL or 0



--QUESTION 3: Find the name and salary of employees in Dallas

--step 1: find out which department number is located in Dallas
SELECT DEPTNO,LOC FROM DEPT WHERE LOC = 'DALLAS';

--Step 2: filter the table for entries with the corresponding department number
SELECT ENAME,SAL,DEPTNO FROM EMP WHERE DEPTNO = '20';



--QUESTION 4: List all departments that do not have any employees
---dept40
SELECT DEPTNO,DNAME FROM DEPT ---select the columns relevant to the query requirement
WHERE DEPTNO NOT IN (SELECT DEPTNO FROM EMP); ---find the department number which is NOT listed in the EMP table



--QUESTION 5: List the department number and average salary of each department

---for department 10:
SELECT AVG(SAL) AS SAL_AVERAGE,DEPTNO ---use average function to find the average of each entry
FROM COMPANY1.EMP
WHERE DEPTNO = 10;

---for department 20:
SELECT AVG(SAL) AS SAL_AVERAGE,DEPTNO
FROM COMPANY1.EMP
WHERE DEPTNO = 20;

---for department 30;
SELECT AVG(SAL) AS SAL_AVERAGE,DEPTNO
FROM COMPANY1.EMP
WHERE DEPTNO = 30;
