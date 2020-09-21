# sql-challenge

# Data Modeling & Engineering

#---------------------------------

DEPARTMENT 
-
DEPT_NO         VARCHAR           PK
DEPT_NAME       VARCHAR    


EMPLOYEE 
-
EMPLOYEE_NO     INTEGER           PK
BIRTH_DATE      DATE       
FIRST_NAME      VARCHAR    
LAST_NAME       VARCHAR    
GENDER          VARCHAR    
HIRE_DATE       DATE       


DEPT_EMPLOYEE
-
EMPLOYEE_NO     INTEGER            FK   >-   EMPLOYEE.EMPLOYEE_NO
DEPT_NO         VARCHAR            FK   >-   DEPARTMENT.DEPT_NO
FROM_DATE       DATE           
TO_DATE         DATE           



DEPT_MANAGER
-
DEPT_NO         VARCHAR            FK   >-   DEPARTMENT.DEPT_NO
EMPLOYEE_NO     INTEGER            FK   >-   EMPLOYEE.EMPLOYEE_NO
FROM_DATE       DATE         
TO_DATE         DATE         



SALARIES
-
EMPLOYEE_NO     INTEGER            FK   >-   EMPLOYEE.EMPLOYEE_NO
SALARY          MONEY        
FROM_DATE       DATE         
TO_DATE         DATE         



TITLES 
-
EMPLOYEE_NO     INT                FK   >-   EMPLOYEE.EMPLOYEE_NO
TITLE           VARCHAR       
FROM_DATE       DATE          
TO_DATE         DATE          