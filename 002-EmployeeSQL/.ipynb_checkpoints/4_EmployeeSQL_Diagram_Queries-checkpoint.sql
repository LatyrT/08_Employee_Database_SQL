
---DISPLAY DATA WITHIN THE TABLES
SELECT * FROM DEPARTMENT;
SELECT * FROM DEPT_EMPLOYEE;
SELECT * FROM DEPT_MANAGER;
SELECT * FROM EMPLOYEE;
SELECT * FROM SALARIES;
SELECT * FROM TITLES;



--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT E.EMPLOYEE_NO, E.LAST_NAME, E.FIRST_NAME, E.GENDER, S.SALARY
FROM EMPLOYEE AS E
INNER JOIN SALARIES AS S 
	ON E.EMPLOYEE_NO = S.EMPLOYEE_NO
;



--2. List employees who were hired in 1986.
SELECT E.EMPLOYEE_NO, E.LAST_NAME, E.FIRST_NAME, E.GENDER, DP.FROM_DATE
FROM EMPLOYEE AS E
INNER JOIN DEPT_EMPLOYEE AS DP 
	ON E.EMPLOYEE_NO = DP.EMPLOYEE_NO
WHERE DP.FROM_DATE BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY DP.FROM_DATE ASC
;



--3. List the manager of each department with the following information: department number, department name, the manager's employee number, 
--   last name, first name, and start and end employment dates.
SELECT DM.DEPT_NO, D.DEPT_NAME, E.EMPLOYEE_NO AS "MANAGER_NO", E.LAST_NAME, E.FIRST_NAME, E.GENDER, DM.FROM_DATE, DM.TO_DATE
FROM DEPT_MANAGER AS DM
INNER JOIN EMPLOYEE AS E
	ON E.EMPLOYEE_NO = DM.EMPLOYEE_NO
INNER JOIN DEPARTMENT AS D
	ON DM.DEPT_NO = D.DEPT_NO
;



--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT E.EMPLOYEE_NO AS "EMPLOYEE_NO", E.LAST_NAME, E.FIRST_NAME, DE.DEPT_NO, D.DEPT_NAME
FROM DEPT_EMPLOYEE AS DE
INNER JOIN EMPLOYEE AS E
	ON E.EMPLOYEE_NO = DE.EMPLOYEE_NO
INNER JOIN DEPARTMENT AS D
	ON DE.DEPT_NO = D.DEPT_NO
;



--5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT *
FROM EMPLOYEE
WHERE FIRST_NAME LIKE 'HERCULES'
AND LAST_NAME LIKE 'B%'
;



--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT E.EMPLOYEE_NO AS "EMPLOYEE_NO", E.LAST_NAME, E.FIRST_NAME, D.DEPT_NAME
FROM DEPT_EMPLOYEE AS DE
INNER JOIN EMPLOYEE AS E
	ON E.EMPLOYEE_NO = DE.EMPLOYEE_NO
INNER JOIN DEPARTMENT AS D
	ON DE.DEPT_NO = D.DEPT_NO
WHERE DEPT_NAME = 'Sales'
;


--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT E.EMPLOYEE_NO AS "EMPLOYEE_NO", E.LAST_NAME, E.FIRST_NAME, D.DEPT_NAME
FROM DEPT_EMPLOYEE AS DE
INNER JOIN EMPLOYEE AS E
	ON E.EMPLOYEE_NO = DE.EMPLOYEE_NO
INNER JOIN DEPARTMENT AS D
	ON DE.DEPT_NO = D.DEPT_NO
WHERE DEPT_NAME IN ('Sales', 'Development')
;



--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT E.LAST_NAME AS "LAST_NAME", COUNT(E.LAST_NAME) AS "NUMBER_OF_OCCURENCES"
FROM DEPT_EMPLOYEE AS DE
INNER JOIN EMPLOYEE AS E
	ON E.EMPLOYEE_NO = DE.EMPLOYEE_NO
GROUP BY LAST_NAME
ORDER BY "NUMBER_OF_OCCURENCES" DESC
;






