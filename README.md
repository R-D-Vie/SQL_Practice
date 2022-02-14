# SQL_Practice
This repository stores all work done while learning SQL during my studies in Computer Science with EssexOnline


Please find below a basic explanation to my approach for each SQL problem.

As the 'EMP' table only shows the department number and the 'DEPT'  table shows both the department name and it's number, I knew that the DEPTNO column was the important column in terms of matching data from the 2 tables. 

For question one I used the SQL 'join' function in order to match the department numbers so that I could list the department name in the resulting query. I filtered the data using a condition statement (WHERE).

For question 2, I presented my answer as 2 database queries. I used the COUNT function to count the entries and then also renamed the column name in the result using the AS command for clarity.

For question 3, I first queried the DEPT table to find out which department number matched the location 'DALLAS'. Based on the corresponding department number ('20') I filtered the data in the EMP table to display the employee name, salary and department number. This is not ideal, as the final result does not display the location DALLAS, so could only be useful to a person who knows that department number 20 is located in Dallas.

A more elegant approach to this question would have been to create an entirely new table which matched the department numbers and showed the corresponding location. I could have then filtered the new table to display entries only from Dallas. However, I did not manage to master the CREATE TABLE function.

For question 4, I used the NOT IN operator to find the department number that appeared in the DEPT table but not in the EMP table.

For question 5, I again presented my answer as 3 separate database queries. For each department number, I queried the average of all salaries and renamed the column to SAL_AVERAGE for clarity and displayed the corresponding department number.

I found the following resources useful:

Question 4: https://stackoverflow.com/questions/2686254/how-to-select-all-records-from-one-table-that-do-not-exist-in-another-table

For COUNT and AVERAGE functions: https://www.w3schools.com/sql/sql_count_avg_sum.asp

