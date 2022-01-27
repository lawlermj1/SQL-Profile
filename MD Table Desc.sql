
-- This extracts table description metadata. 
-- Typically, this is not populated so it only yields null values. 

Select 
tbl.table_schema
,tbl.table_name
, prop.value
--MAX(prop.value)
		FROM information_schema.tables tbl
		LEFT JOIN sys.extended_properties prop 
		ON prop.major_id = object_id(tbl.table_schema + '.' + tbl.table_name) 
		AND prop.minor_id = 0
		AND prop.name = 'MS_Description' 	
		WHERE  tbl.TABLE_TYPE = 'BASE TABLE' 
--		AND T.[TABLE_SCHEMA] = tbl.table_schema
--		AND T.[TABLE_NAME] = tbl.table_name
--		GROUP BY	tbl.table_schema, tbl.table_name
ORDER BY tbl.table_name
;
