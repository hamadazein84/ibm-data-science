##### Query 1A: Select the names and job start dates of all employees who work for the department number 5.

```
select E.F_NAME, E.L_NAME, J.START_DATE
from EMPLOYEES E
         inner join JOB_HISTORY J on E.EMP_ID = J.EMPL_ID
where E.DEP_ID = 5;
```

##### Query 1B: Select the names, job start dates, and job titles of all employees who work for the department number 5.

```
select E.F_NAME, E.L_NAME, JH.START_DATE, J.JOB_TITLE
from EMPLOYEES E
         inner join JOB_HISTORY JH on E.EMP_ID = JH.EMPL_ID
         inner join JOBS J on JH.JOBS_ID = J.JOB_IDENT
where E.DEP_ID = 5;
```

##### Query 2A: Perform a Left Outer Join on the EMPLOYEES and DEPARTMENT tables and select employee id, last name, department id and department name for all employees

```
select E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME
from EMPLOYEES E
         left join DEPARTMENTS D on E.DEP_ID = D.DEPT_ID_DEP;
```

##### Query 2B: Re-write the query for 2A to limit the result set to include only the rows for employees born before 1980.

```
select E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME
from EMPLOYEES E
         left join DEPARTMENTS D on E.DEP_ID = D.DEPT_ID_DEP
where YEAR(E.B_DATE) < 1980 ;
```


##### Query 2C: Re-write the query for 2A to have the result set include all the employees but department names for only the employees who were born before 1980.

```
select E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME
from EMPLOYEES E
         left join DEPARTMENTS D on E.DEP_ID = D.DEPT_ID_DEP AND YEAR(E.B_DATE) < 1980;
```


##### Query 3A: Perform a Full Join on the EMPLOYEES and DEPARTMENT tables and select the First name, Last name and Department name of all employees.

```
select E.F_NAME, E.L_NAME, D.DEP_NAME
from EMPLOYEES E
         FULL JOIN DEPARTMENTS D on E.DEP_ID = D.DEPT_ID_DEP;
```

##### Query 3B: Re-write Query 3A to have the result set include all employee names but department id and department names only for male employees.

```
select E.F_NAME, E.L_NAME, D.DEP_NAME
from EMPLOYEES E
         FULL JOIN DEPARTMENTS D on E.DEP_ID = D.DEPT_ID_DEP and E.SEX = 'M';
```