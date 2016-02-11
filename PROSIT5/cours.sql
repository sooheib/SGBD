select * from employees where job_id in('SA_MAN','AD_VP',null)
select * from employees where job_id not  in('SA_MAN','AD_VP',null)

NOT IN vs. NOT EXISTS vs. LEFT JOIN / IS NULL: Oracle

Concat: ||
length
trim
ltrim ('n' from 'nation') - RTRIM('123000', '0') Result: '123'
rtrim('char')
lpad():SELECT LPAD('azerty', 4, 'x');  -- retourne 'azer'
rpad()
round()
trunc:TRUNC(125.815, 1)
Result: 125.8
to_date: SELECT MONTHS_BETWEEN
   (TO_DATE('02-02-1995','MM-DD-YYYY'),
    TO_DATE('01-01-1995','MM-DD-YYYY') ) "Months"
    FROM DUAL;
    select extract(year from sysdate) as year
to_char:TO_CHAR(sysdate, 'yyyy/mm/dd')-Result: '2003/07/09'
to_number






