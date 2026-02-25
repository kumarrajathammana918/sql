CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Order_Date DATE,
    Customer_ID VARCHAR(10),
    Customer_Name VARCHAR(100),
    Product_Category VARCHAR(100),
    Product_Name VARCHAR(150),
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Payment_Mode VARCHAR(50),
    Store_Location VARCHAR(100)
);

INSERT ALL
  INTO Orders
    (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category,
     Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
  VALUES
    (1001, TO_DATE('2026-02-01','YYYY-MM-DD'), 'C001', 'Ravi Kumar',
     'Electronics', 'Wireless Mouse', 2, 799, 'UPI', 'Bangalore')
  INTO Orders
    (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category,
     Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
  VALUES
    (1002, TO_DATE('2026-02-02','YYYY-MM-DD'), 'C002', 'Sneha Reddy',
     'Grocery', 'Basmati Rice 5kg', 1, 650, 'Credit Card', 'Hyderabad')
  INTO Orders
    (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category,
     Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
  VALUES
    (1003, TO_DATE('2026-02-03','YYYY-MM-DD'), 'C003', 'Arjun Mehta',
     'Fashion', 'Men''s T-Shirt', 3, 499, 'Cash', 'Chennai')
  INTO Orders
    (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category,
     Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
  VALUES
    (1004, TO_DATE('2026-02-04','YYYY-MM-DD'), 'C004', 'Priya Sharma',
     'Electronics', 'Bluetooth Speaker', 1, 1499, 'Debit Card', 'Mumbai')
  INTO Orders
    (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category,
     Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
  VALUES
    (1005, TO_DATE('2026-02-05','YYYY-MM-DD'), 'C005', 'Kiran Rao',
     'Home Kitchen', 'Mixer Grinder', 1, 2499, 'UPI', 'Bangalore')
  INTO Orders
    (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category,
     Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
  VALUES
    (1006, TO_DATE('2026-02-06','YYYY-MM-DD'), 'C006', 'Neha Verma',
     'Beauty', 'Face Cream', 4, 299, 'Credit Card', 'Delhi')
  INTO Orders
    (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category,
     Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
  VALUES
    (1007, TO_DATE('2026-02-07','YYYY-MM-DD'), 'C007', 'Rahul Das',
     'Grocery', 'Cooking Oil 1L', 5, 180, 'Cash', 'Kolkata')
  INTO Orders
    (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category,
     Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
  VALUES
    (1008, TO_DATE('2026-02-08','YYYY-MM-DD'), 'C008', 'Anjali Nair',
     'Fashion', 'Women''s Jeans', 2, 1199, 'UPI', 'Kochi')
  INTO Orders
    (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category,
     Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
  VALUES
    (1009, TO_DATE('2026-02-09','YYYY-MM-DD'), 'C009', 'Suresh Patel',
     'Electronics', 'Smartphone', 1, 15999, 'Debit Card', 'Ahmedabad')
  INTO Orders
    (Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category,
     Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
  VALUES
    (1010, TO_DATE('2026-02-10','YYYY-MM-DD'), 'C010', 'Meena Iyer',
     'Home  Kitchen', 'Pressure Cooker', 1, 1899, 'Credit Card', 'Pune');

     select * from Orders;

--      # STRING FUNCTIONS – 20 Questions

-- 1. Write a query to convert all customer names to uppercase.
select upper(Customer_Name) as upper_custname from Orders;
-- 2. Extract the first 5 characters from Product_Name.
 select substr(Product_Name,1,5) as productname5 from orders;

-- 3. Find the length of each Customer_Name.
select length(customer_Name) as length_name from Orders;


-- 4. Replace the word "Rice" with "Premium Rice" in Product_Name.
select Replace(product_name, 'Rice','Premium rice') from orders;
-- 5. Remove leading and trailing spaces from Customer_Name.
select trim(Customer_Name)
 from orders; 
-- 6. Concatenate First_Name and Last_Name as Full_Name.
select CUSTOMER_NAME || ''|| PRODUCT_NAME as full_name
from orders
-- 7. Find customers whose names start with 'A'.
SELECT *
FROM Orders
WHERE Customer_Name like 'A%';
-- 8. Extract the domain name from Email_ID.


-- 9. Find the position of '@' in Email_ID.


-- 10. Reverse the Product_Name.

select Reverse(product_name) as reversed_name 
from orders
-- 11. Convert the first letter of each word in Product_Name to uppercase.
select initcap(Product_Name) as capital_product
from Orders

-- 12. Extract the last 3 characters from Order_ID.
select substr(Order_ID,-3) as sub_orderid
from orders

-- 13. Count how many times letter 'a' appears in Customer_Name.
SELECT LENGTH(Customer_Name) 
     - LENGTH(REPLACE(LOWER(Customer_Name),'a','')) AS CountA
FROM Orders;
-- 14. Mask the last 4 digits of a phone number.
select concat(phone_)

-- 15. Split Full_Name into First_Name and Last_Name.ddddddddddddd

SELECT SUBSTR(Customer_Name, 1, INSTR(Customer_Name,' ')-1) AS First_Name,
       SUBSTR(Customer_Name, INSTR(Customer_Name,' ')+1)   AS Last_Name
FROM Orders;
-- 16. Remove all special characters from Product_Code.

SELECT REGEXP_REPLACE(Product_Code, '[^A-Za-z0-9]', '') AS CleanCode
FROM Orders;
-- 17. Compare two columns ignoring case sensitivity.


-- 18. Find customers whose name contains 'kumar'.
select * from orders where lower(Customer_Name) like '%kumar';
-- 19. Pad Order_ID with leading zeros to make it 6 digits.
select lpad(Order_ID, 6, '0') as padded_orderid
from orders
-- 20. Extract substring between two characters.dddddddddddddddd
SELECT REGEXP_SUBSTR(Customer_Name, '\(([^)]+)\)', 1, 1, NULL, 1) AS BetweenChars
FROM Orders;

-- # NUMERICAL FUNCTIONS – 20 Questions

-- 1. Round Unit_Price to 2 decimal places.
SELECT ROUND(Unit_Price, 2) AS Rounded_Price
FROM Orders;
-- 2. Find total sales per order.
SELECT Order_ID,SUM(Unit_Price * Quantity) AS total_sales
FROM orders
GROUP BY Order_ID;
-- 3. Calculate average order value.

SELECT ROUND(AVG(Unit_Price * Quantity), 2) AS avg_order_value
FROM orders;
-- 4. Find highest product price.
select max(Unit_Price) as highest_price
from orders
-- 5. Find lowest product price.
select min(Unit_Price) as highest_price
from orders
-- 6. Calculate percentage discount applied.


-- 7. Find modulus of Quantity divided by 2.
Select MOD(Quantity, 2) AS remainder
from orders;

-- 8. Convert negative values to positive.

select abs(Unit_Price)as positve_price
from Orders;
-- 9. Truncate price without rounding.
select * from orders;

SELECT TRUNC(Unit_Price, 0) AS truncated_price
FROM orders;
-- 10. Find square root of total sales.
select sqrt(sum(Unit_Price * Quantity)) as sqrt_sales
from orders


-- 11. Calculate exponential value of a number.

SELECT EXP(3) AS exponential_value
FROM dual;
-- 12. Calculate power of 2^5.

select power(2,5)as power_value
from dual;

-- 13. Find absolute difference between two prices.

 select abs(unit_price-50) from orders;

-- 14. Calculate sales growth percentage.

select round((newsales-oldsales)/oldsales)*100,2) as growth_perc
from orders;
-- 15. Find random number between 1 and 100.
SELECT ROUND(RANDOM_num.VALUE(1, 100)) AS random_number
FROM dual;

-- 16. Divide total sales by number of orders.

select
Sum(Unit_Price * Quantity) / COUNT(Order_ID) 
AS avg_sales_per_order
FROM orders;
-- 17. Find ceiling value of price.

SELECT CEIL(Unit_Price) AS ceiling_value
FROM orders;
-- 18. Find floor value of price.

SELECT FLOOR(Unit_Price) AS floor_value
FROM orders;
-- 19. Convert decimal to integer.

select cast (decinaml_num as integer)
from dual;
-- 20. Calculate compound interest
