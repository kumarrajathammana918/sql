
-- # DATE FUNCTIONS – 20 Questions

-- 1. Extract year from Order_Date.

SELECT EXTRACT(YEAR FROM Order_Date) AS Order_Year
FROM ORDERS;

-- 2. Extract month from Order_Date.

SELECT EXTRACT(MONTH FROM Order_Date) AS ORDER_MONTH
…from  dual;
-- 19. Check if date is weekend.
select case when to_char( Order_Date,'DY','NLS_DATE_LANGUAGE=ENGLISH')in ('SATURDAY','SUNDAY') THEN ('WEEKEND') ELSE('WEEKDAY') END AS type_day FROM ORDERS ;

-- 20. Find next Monday after a given date.
SELECT* FROM ORDERS;