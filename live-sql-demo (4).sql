-- Replace NULL price with 0.
SELECT NVL(unit_price, 0) AS price
FROM ORDERS;
-- Replace NULL Customer_Name with 'Unknown'.
SELECT NVL(customer_name, 'Unknown') AS unknown_names
FROM ORDERS;
-- Count NULL values in Product_Name.
select count(*) as null_products from ORDERS
where product_name is null;
-- Find rows where Order_Date is NULL.
select order_id from ORDERS
where order_date is null;
-- Use COALESCE to return first non-null value.

select COALESCE(null,null,)
-- Use NVL to replace NULL values.
select nvl(null,'oracle')
from dual;
-- Use IFNULL function.
select IFNULL(null,'oracle')
from dual;
-- Check if column is NULL.
select * from orders 
where product_name is null;

-- Check if column is NOT NULL.
select * from orders 
where product_name is not null;
-- Use NULLIF between two columns.
select nullif(PRODUCT_CATEGORY,product_name)
from orders;
-- Replace blank values with NULL.
select case when
trim(product_name)is null
then 'else product_name'
end from orders;
-- Count non-null values.
-- Filter records where price is NULL or 0.
-- Use CASE to handle NULL values.
-- Compare NULL values properly.
-- Handle NULL in aggregation.
-- Find average excluding NULL values.
-- Find sum ignoring NULL values.
-- Identify columns containing NULL using metadata.
-- Convert NULL to default system date.