-- # DATE FUNCTIONS – 20 Questions

-- 1. Extract year from Order_Date.

SELECT EXTRACT(YEAR FROM Order_Date) AS Order_Year
FROM ORDERS;

-- 2. Extract month from Order_Date.

SELECT EXTRACT(MONTH FROM Order_Date) AS ORDER_MONTH
FROM ORDERS;

-- 3. Extract day from Order_Date.

SELECT EXTRACT(DAY FROM Order_Date) AS ORDER_DAY
FROM ORDERS;

-- 4. Find current date.

SELECT SYSDATE AS SYS_DATE
FROM DUAL;

-- 5. Find current timestamp.

SELECT SYSTIMESTAMP AS TIME_STAMP
FROM DUAL;

-- 6. Add 7 days to Order_Date.

SELECT ORDER_DATE, Order_Date + 7
FROM ORDERS;

-- 7. Subtract 30 days from Order_Date.


SELECT ORDER_DATE, Order_Date - 30
FROM ORDERS;

-- 8. Find difference between two dates.

SELECT SYSDATE - ORDER_DATE AS DATE_DIFFERENCE
FROM ORDERS;

-- 9. Find number of months between two dates.

SELECT
ORDER_DATE,
    SYSDATE,
        EXTRACT(MONTH FROM ORDER_DATE) - EXTRACT(MONTH FROM SYSDATE) AS MONTH_DIFFERENCE
        FROM ORDERS;

-- 10. Find last day of the month.

        SELECT LAST_DAY(ORDER_DATE) AS LAST_DAY_OF_MONTH
        FROM ORDERS;
-- 11. Get first day of the year.

        SELECT TRUNC(ORDER_DATE,'YYYY') AS FIRST_DAY_OF_YEAR
        FROM ORDERS;

-- 12. Format date as 'DD-MM-YYYY'.

        SELECT TO_CHAR(ORDER_DATE,'DD-MM-YYYY') AS NEW_FORMAT
        FROM ORDERS;

-- 13. Convert string to date.

        SELECT TO_DATE(ORDER_DATE, 'DD-MM-YYYY')
        FROM ORDERS;

-- 14. Convert date to string.

        SELECT TO_CHAR(ORDER_DATE,'DD-MM-YYYY')
        FROM ORDERS;

-- 15. Find week number of the year.

    SELECT TO_CHAR(ORDER_DATE,'WW') AS WEEK_NUMBER
    FROM ORDERS;

-- 16. Find day name from date.

        SELECT TO_CHAR(sysdate,'DAY') AS DAY_NAME
FROM dual;

-- 17. Find quarter of the year.
SELECT TO_CHAR(SYSDATE,'Q')
FROM ORDERS;
-- 18. Calculate age from DOB.
select floor(months_between(sysdate,to_date('03-02-2004','dd-mm-yyyy'))/12) as age
from  dual;
-- 19. Check if date is weekend.
select case when to_char( Order_Date,'DY','NLS_DATE_LANGUAGE=ENGLISH')in ('SATURDAY','SUNDAY') THEN ('WEEKEND') ELSE('WEEKDAY') END AS type_day FROM ORDERS ;

-- 20. Find next Monday after a given date.
SELECT* FROM ORDERS;
