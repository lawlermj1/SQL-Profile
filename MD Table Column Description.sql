
-- This extracts table description metadata. 
-- Typically, this is not populated so it only yields null values. 

select 
    TableName = tbl.table_schema + '.' + tbl.table_name, 
    TableDescription = prop.value,
    ColumnName = col.column_name, 
    ColumnDataType = col.data_type
FROM information_schema.tables tbl
INNER JOIN information_schema.columns col 
    ON col.table_name = tbl.table_name
    AND col.table_schema = tbl.table_schema
LEFT JOIN sys.extended_properties prop 
    ON prop.major_id = object_id(tbl.table_schema + '.' + tbl.table_name) 
    AND prop.minor_id = 0
    AND prop.name = 'MS_Description' 
WHERE tbl.table_type = 'base table'
;
