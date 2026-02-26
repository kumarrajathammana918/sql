-- Find sine value of an angle.
SELECT ceil(SIN(90)) AS sine_value
FROM dual;
-- 2. Find cosine value of an angle.
select ceil(cos(0))as cos_value
from dual;
-- 3. Find tangent value.
select ceil(tan(90))as cos_value
from dual;

-- 5. Convert radians to degrees.

-- 6. Find logarithm (base 10) of a number.
-- 7. Find natural log of a number.
-- 8. Find square of a number.
select power(10,2)as squared
from dual;
-- 9. Find cube of a number.
select power(10,3)as squared
from dual
-- 10. Calculate factorial of a number.

-- 11. Find greatest value among three numbers.
select greatest(1,34,233)asgreatest
from dual;
-- 12. Find least value among three numbers.
select least(1,34,233)asgreatest
from dual;
-- 13. Calculate variance of sales.
SELECT VAR_SAMP(1223) AS sales_variance
FROM dual;
-- 14. Calculate standard deviation of sales.

-- 15. Find average deviation.

-- 16. Calculate geometric mean.
-- 17. Calculate harmonic mean.
-- 18. Find sum of squares.
-- 19. Calculate correlation between two columns.
-- 20. Calculate regression slope.