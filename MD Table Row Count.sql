
-- This extracts table row count metadata. 
-- It provides a clear picture of what tables are actually used, and which ones that can be ignored. 

SELECT  A.Name as TableName, AVG(B.rows) AS 'Row Count'
FROM sys.objects A
INNER JOIN sys.partitions B ON A.object_id = B.object_id
WHERE A.type = 'U' 
--AND AVG(B.rows) > 0 
GROUP BY A.Name 
ORDER BY AVG(B.rows) DESC

SELECT      SCHEMA_NAME(A.schema_id) as SN,
        --A.Name, SUM(B.rows) AS 'RowCount'  Use AVG instead of SUM
          A.Name as TN,
		   AVG(B.rows) AS 'RowCountAVG',
		   SUM(B.rows) AS 'RowCountSUM' 
FROM        sys.objects A
INNER JOIN sys.partitions B ON A.object_id = B.object_id
WHERE       A.type = 'U'
GROUP BY    A.schema_id, A.Name
;
