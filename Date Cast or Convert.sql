
-- Either convert or cast is used for dates without issues. 
-- The low data is year 0001. 
-- The high date is year 9999. 


SELECT convert(varchar(10), '01-01-0001', 105) as X
UNION 
SELECT convert(varchar(10), '31-12-9999', 105) as X 

SELECT convert(varchar(10), '0001-01-01', 20) as X
UNION 
SELECT convert(varchar(10), '9999-12-31', 20) as X 

SELECT CAST('0001-01-01' AS date) as X
UNION 
SELECT CAST('9999-12-31' AS date) as X

