select * from employees where job_id in('SA_MAN','AD_VP',null)
select * from employees where job_id not  in('SA_MAN','AD_VP',null)

NOT IN vs. NOT EXISTS vs. LEFT JOIN / IS NULL: Oracle

Concat: ||
length: SELECT LENGTH('CANDIDE') "Length in characters"
   FROM DUAL;
trim
ltrim ('n' from 'nation') - RTRIM('123000', '0') Result: '123'
rtrim('char')
lpad():SELECT LPAD('azerty', 4, 'x');  -- retourne 'azer'
rpad()
round():SELECT ROUND(15.193,1) "Round" FROM DUAL;

trunc:TRUNC(125.815, 1)
Result: 125.8
to_date: SELECT MONTHS_BETWEEN
   (TO_DATE('02-02-1995','MM-DD-YYYY'),
    TO_DATE('01-01-1995','MM-DD-YYYY') ) "Months"
    FROM DUAL;
    select extract(year from sysdate) as year
to_char:TO_CHAR(sysdate, 'yyyy/mm/dd')-Result: '2003/07/09'
to_number


---
DECODE( expression , search , result [, search , result]... [, default] )
---
SELECT last_id,job_id,salary,(
CASE
   WHEN job_id='IT_PROG' THEN salary*1.10
   WHEN job_id='SI_CLERK' THEN salary*1.15
   WHEN job_id='SA_REP' THEN salary*1.20

   ELSE salary*1.50
   END)
as nv_salaire
from emplyees m
---
SELECT last_id,last_name,job_id,salary,(
DECODE( job_id , 'IT_PROG' , salary*1.10 , 'SI_CLERK' , salary*1.15,'SA_REP',salary*1.20 )
as nv_salaire
from emplyees m













