## Question 1
Yes (_3 Warnings_)

The values of Job Title are truncated in the database table (compared to the file). 

##### Resolution
We can increase size of column **JOB_TITLE** to 20 or 25


## Question 2
No. The last row in the file is not loaded to the database table.

##### Resolution
Because the value of **DEPT_ID_DEP** is duplicated.


##### Query 1
```
select * from EMPLOYEES where ADDRESS like  '%Elgin,IL%' ;
```

##### Query 2
```
select * from EMPLOYEES where B_DATE like '197%' ;
```

##### Query 3
```
select * from EMPLOYEES where DEP_ID = 5 and SALARY between 60000 and 70000 ;
```


##### Query 4A
```
select * from EMPLOYEES order by DEP_ID ;
```


##### Query 4B
```
select * from EMPLOYEES order by DEP_ID desc , L_NAME desc ;
```

##### Query 5A
```
select DEP_ID, count(*) from EMPLOYEES group by DEP_ID ;
```

##### Query 5B
```
select DEP_ID, count(*), avg(SALARY) from EMPLOYEES group by DEP_ID ;
```

##### Query 5C
```
select DEP_ID, count(*) as NUM_EMPLOYEES, avg(SALARY) as AVG_SALARY from EMPLOYEES group by DEP_ID ;
```

##### Query 5D
```
select DEP_ID, count(*) as NUM_EMPLOYEES, avg(SALARY) as AVG_SALARY
from EMPLOYEES
group by DEP_ID
order by AVG_SALARY ;
```

##### Query 5E
```
select DEP_ID, count(*) as NUM_EMPLOYEES, avg(SALARY) as AVG_SALARY
from EMPLOYEES
group by DEP_ID
having count(*) < 4
order by AVG_SALARY ;
```

##### Query 6
```
select emp.*
from EMPLOYEES as emp
         inner join DEPARTMENTS dept on emp.DEP_ID = dept.DEPT_ID_DEP
order by dept.DEP_NAME asc, emp.L_NAME desc;
```