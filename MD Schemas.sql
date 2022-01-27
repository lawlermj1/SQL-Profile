--	This provides the available schemas 

-- Typically only the dbo schema contains user data. 

select s.name as schema_name, 
    s.schema_id,
    u.name as schema_owner
from sys.schemas s
    inner join sys.sysusers u
        on u.uid = s.principal_id
order by s.name

-- ->
-- schema_name	schema_id	schema_owner
-- db_accessadmin	16385	db_accessadmin
-- db_backupoperator	16389	db_backupoperator
-- db_datareader	16390	db_datareader
-- db_datawriter	16391	db_datawriter
-- db_ddladmin	16387	db_ddladmin
-- db_denydatareader	16392	db_denydatareader
-- db_denydatawriter	16393	db_denydatawriter
-- db_owner	16384	db_owner
-- db_securityadmin	16386	db_securityadmin
-- dbo	1	dbo
-- dev	5	dbo
-- guest	2	guest
-- INFORMATION_SCHEMA	3	INFORMATION_SCHEMA
-- sys	4	sys

