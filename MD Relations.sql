
-- This shows a pattern to verify the row count metadata of relations. 
-- Each Select is unioned into a single result table. 
-- Note that these relations are not defined in the SQL Server data dictionary. 
-- Instead, each relation has to be discovered manually, and verified with this pattern. 
-- This example is from Sparx Enterprise Architect. 
-- Manual discovery is typically guided by column names, consistent types, type value range comparisons, etc. 


SELECT 't_attribute' ptn, 'ea_guid' pcn, 't_attributetag' ctn, 'VALUE' ccn, Count(*) CT, Count(distinct ct.VALUE) CTDIS FROM [sparxDB].[dbo].t_attributetag ct Inner Join [sparxDB].[dbo].t_attribute pt On ct.VALUE = pt.ea_guid union 
SELECT 't_attribute' ptn, 'ID' pcn, 't_attributetag' ctn, 'ElementID' ccn, Count(*) CT, Count(distinct ct.ElementID) CTDIS FROM [sparxDB].[dbo].t_attributetag ct Inner Join [sparxDB].[dbo].t_attribute pt On ct.ElementID = pt.ID union 
SELECT 't_attribute' ptn, 'ea_guid' pcn, 't_objectproperties' ctn, 'VALUE' ccn, Count(*) CT, Count(distinct ct.VALUE) CTDIS FROM [sparxDB].[dbo].t_objectproperties ct Inner Join [sparxDB].[dbo].t_attribute pt On ct.VALUE = pt.ea_guid union 
SELECT 't_cardinality' ptn, 'Cardinality' pcn, 't_connector' ctn, 'DestCard' ccn, Count(*) CT, Count(distinct ct.DestCard) CTDIS FROM [sparxDB].[dbo].t_connector ct Inner Join [sparxDB].[dbo].t_cardinality pt On ct.DestCard = pt.Cardinality union 
SELECT 't_cardinality' ptn, 'Cardinality' pcn, 't_connector' ctn, 'SourceCard' ccn, Count(*) CT, Count(distinct ct.SourceCard) CTDIS FROM [sparxDB].[dbo].t_connector ct Inner Join [sparxDB].[dbo].t_cardinality pt On ct.SourceCard = pt.Cardinality union 
SELECT 't_connector' ptn, 'Connector_ID' pcn, 't_diagramlinks' ctn, 'ConnectorID' ccn, Count(*) CT, Count(distinct ct.ConnectorID) CTDIS FROM [sparxDB].[dbo].t_diagramlinks ct Inner Join [sparxDB].[dbo].t_connector pt On ct.ConnectorID = pt.Connector_ID union 
SELECT 't_connectortypes' ptn, 'Connector_Type' pcn, 't_connector' ctn, 'Connector_Type' ccn, Count(*) CT, Count(distinct ct.Connector_Type) CTDIS FROM [sparxDB].[dbo].t_connector ct Inner Join [sparxDB].[dbo].t_connectortypes pt On ct.Connector_Type = pt.Connector_Type union 
SELECT 't_diagram' ptn, 'Diagram_ID' pcn, 't_diagramlinks' ctn, 'DiagramID' ccn, Count(*) CT, Count(distinct ct.DiagramID) CTDIS FROM [sparxDB].[dbo].t_diagramlinks ct Inner Join [sparxDB].[dbo].t_diagram pt On ct.DiagramID = pt.Diagram_ID union 
SELECT 't_diagram' ptn, 'Diagram_ID' pcn, 't_diagramobjects' ctn, 'Diagram_ID' ccn, Count(*) CT, Count(distinct ct.Diagram_ID) CTDIS FROM [sparxDB].[dbo].t_diagramobjects ct Inner Join [sparxDB].[dbo].t_diagram pt On ct.Diagram_ID = pt.Diagram_ID union 
SELECT 't_diagramtypes' ptn, 'Diagram_Type' pcn, 't_diagram' ctn, 'Diagram_Type' ccn, Count(*) CT, Count(distinct ct.Diagram_Type) CTDIS FROM [sparxDB].[dbo].t_diagram ct Inner Join [sparxDB].[dbo].t_diagramtypes pt On ct.Diagram_Type = pt.Diagram_Type union 
SELECT 't_document' ptn, 'DocID' pcn, 't_object' ctn, 'ea_guid' ccn, Count(*) CT, Count(distinct ct.ea_guid) CTDIS FROM [sparxDB].[dbo].t_object ct Inner Join [sparxDB].[dbo].t_document pt On ct.ea_guid = pt.DocID union 
SELECT 't_document' ptn, 'ElementID' pcn, 't_object' ctn, 'ea_guid' ccn, Count(*) CT, Count(distinct ct.ea_guid) CTDIS FROM [sparxDB].[dbo].t_object ct Inner Join [sparxDB].[dbo].t_document pt On ct.ea_guid = pt.ElementID union 
SELECT 't_object' ptn, 'Object_ID' pcn, 't_attribute' ctn, 'Object_ID' ccn, Count(*) CT, Count(distinct ct.Object_ID) CTDIS FROM [sparxDB].[dbo].t_attribute ct Inner Join [sparxDB].[dbo].t_object pt On ct.Object_ID = pt.Object_ID union 
SELECT 't_object' ptn, 'ea_guid' pcn, 't_attributetag' ctn, 'VALUE' ccn, Count(*) CT, Count(distinct ct.VALUE) CTDIS FROM [sparxDB].[dbo].t_attributetag ct Inner Join [sparxDB].[dbo].t_object pt On ct.VALUE = pt.ea_guid union 
SELECT 't_object' ptn, 'Object_ID' pcn, 't_connector' ctn, 'End_Object_ID' ccn, Count(*) CT, Count(distinct ct.End_Object_ID) CTDIS FROM [sparxDB].[dbo].t_connector ct Inner Join [sparxDB].[dbo].t_object pt On ct.End_Object_ID = pt.Object_ID union 
SELECT 't_object' ptn, 'Object_ID' pcn, 't_connector' ctn, 'Start_Object_ID' ccn, Count(*) CT, Count(distinct ct.Start_Object_ID) CTDIS FROM [sparxDB].[dbo].t_connector ct Inner Join [sparxDB].[dbo].t_object pt On ct.Start_Object_ID = pt.Object_ID union 
SELECT 't_object' ptn, 'Object_ID' pcn, 't_diagramobjects' ctn, 'Object_ID' ccn, Count(*) CT, Count(distinct ct.Object_ID) CTDIS FROM [sparxDB].[dbo].t_diagramobjects ct Inner Join [sparxDB].[dbo].t_object pt On ct.Object_ID = pt.Object_ID union 
SELECT 't_object' ptn, 'ParentID' pcn, 't_object' ctn, 'Object_ID' ccn, Count(*) CT, Count(distinct ct.Object_ID) CTDIS FROM [sparxDB].[dbo].t_object ct Inner Join [sparxDB].[dbo].t_object pt On ct.Object_ID = pt.ParentID union 
SELECT 't_object' ptn, 'ea_guid' pcn, 't_objectproperties' ctn, 'VALUE' ccn, Count(*) CT, Count(distinct ct.VALUE) CTDIS FROM [sparxDB].[dbo].t_objectproperties ct Inner Join [sparxDB].[dbo].t_object pt On ct.VALUE = pt.ea_guid union 
SELECT 't_object' ptn, 'Object_ID' pcn, 't_objectproperties' ctn, 'Object_ID' ccn, Count(*) CT, Count(distinct ct.Object_ID) CTDIS FROM [sparxDB].[dbo].t_objectproperties ct Inner Join [sparxDB].[dbo].t_object pt On ct.Object_ID = pt.Object_ID union 
SELECT 't_object' ptn, 'ea_guid' pcn, 't_package' ctn, 'ea_guid' ccn, Count(*) CT, Count(distinct ct.ea_guid) CTDIS FROM [sparxDB].[dbo].t_package ct Inner Join [sparxDB].[dbo].t_object pt On ct.ea_guid = pt.ea_guid union 
SELECT 't_object' ptn, 'ea_guid' pcn, 't_xref' ctn, 'Client' ccn, Count(*) CT, Count(distinct ct.Client) CTDIS FROM [sparxDB].[dbo].t_xref ct Inner Join [sparxDB].[dbo].t_object pt On ct.Client = pt.ea_guid union 
SELECT 't_objecttypes' ptn, 'Object_Type' pcn, 't_object' ctn, 'Object_Type' ccn, Count(*) CT, Count(distinct ct.Object_Type) CTDIS FROM [sparxDB].[dbo].t_object ct Inner Join [sparxDB].[dbo].t_objecttypes pt On ct.Object_Type = pt.Object_Type union 
SELECT 't_package' ptn, 'Package_ID' pcn, 't_diagram' ctn, 'Package_ID' ccn, Count(*) CT, Count(distinct ct.Package_ID) CTDIS FROM [sparxDB].[dbo].t_diagram ct Inner Join [sparxDB].[dbo].t_package pt On ct.Package_ID = pt.Package_ID union 
SELECT 't_package' ptn, 'Package_ID' pcn, 't_diagramtypes' ctn, 'Package_ID' ccn, Count(*) CT, Count(distinct ct.Package_ID) CTDIS FROM [sparxDB].[dbo].t_diagramtypes ct Inner Join [sparxDB].[dbo].t_package pt On ct.Package_ID = pt.Package_ID union 
SELECT 't_package' ptn, 'ea_guid' pcn, 't_object' ctn, 'ea_guid' ccn, Count(*) CT, Count(distinct ct.ea_guid) CTDIS FROM [sparxDB].[dbo].t_object ct Inner Join [sparxDB].[dbo].t_package pt On ct.ea_guid = pt.ea_guid union 
SELECT 't_package' ptn, 'Package_ID' pcn, 't_object' ctn, 'PDATA1' ccn, Count(*) CT, Count(distinct ct.PDATA1) CTDIS FROM [sparxDB].[dbo].t_object ct Inner Join [sparxDB].[dbo].t_package pt On ct.PDATA1 = pt.Package_ID union 
SELECT 't_package' ptn, 'Package_ID' pcn, 't_object' ctn, 'Package_ID' ccn, Count(*) CT, Count(distinct ct.Package_ID) CTDIS FROM [sparxDB].[dbo].t_object ct Inner Join [sparxDB].[dbo].t_package pt On ct.Package_ID = pt.Package_ID union 
SELECT 't_package' ptn, 'Parent_ID' pcn, 't_package' ctn, 'Package_ID' ccn, Count(*) CT, Count(distinct ct.Package_ID) CTDIS FROM [sparxDB].[dbo].t_package ct Inner Join [sparxDB].[dbo].t_package pt On ct.Package_ID = pt.Parent_ID union 
SELECT 't_statustypes' ptn, 'Status' pcn, 't_object' ctn, 'Status' ccn, Count(*) CT, Count(distinct ct.Status) CTDIS FROM [sparxDB].[dbo].t_object ct Inner Join [sparxDB].[dbo].t_statustypes pt On ct.Status = pt.Status union 
SELECT 't_stereotypes' ptn, 'Stereotype' pcn, 't_object' ctn, 'Stereotype' ccn, Count(*) CT, Count(distinct ct.Stereotype) CTDIS FROM [sparxDB].[dbo].t_object ct Inner Join [sparxDB].[dbo].t_stereotypes pt On ct.Stereotype = pt.Stereotype union 
SELECT 't_attribute' ptn, 'ea_guid' pcn, 't_attributetag' ctn, 'ea_guid' ccn, Count(*) CT, Count(distinct ct.ea_guid) CTDIS FROM [sparxDB].[dbo].t_attributetag ct Inner Join [sparxDB].[dbo].t_attribute pt On ct.ea_guid = pt.ea_guid union 
SELECT 't_diagram' ptn, 'Diagram_ID' pcn, 't_connector' ctn, 'DiagramID' ccn, Count(*) CT, Count(distinct ct.DiagramID) CTDIS FROM [sparxDB].[dbo].t_connector ct Inner Join [sparxDB].[dbo].t_diagram pt On ct.DiagramID = pt.Diagram_ID union 
SELECT 't_diagram' ptn, 'ParentID' pcn, 't_diagram' ctn, 'Diagram_ID' ccn, Count(*) CT, Count(distinct ct.Diagram_ID) CTDIS FROM [sparxDB].[dbo].t_diagram ct Inner Join [sparxDB].[dbo].t_diagram pt On ct.Diagram_ID = pt.ParentID union 
SELECT 't_diagram' ptn, 'Diagram_ID' pcn, 't_object' ctn, 'Diagram_ID' ccn, Count(*) CT, Count(distinct ct.Diagram_ID) CTDIS FROM [sparxDB].[dbo].t_object ct Inner Join [sparxDB].[dbo].t_diagram pt On ct.Diagram_ID = pt.Diagram_ID union 
SELECT 't_image' ptn, 'ImageID' pcn, 't_objecttypes' ctn, 'ImageID' ccn, Count(*) CT, Count(distinct ct.ImageID) CTDIS FROM [sparxDB].[dbo].t_objecttypes ct Inner Join [sparxDB].[dbo].t_image pt On ct.ImageID = pt.ImageID union 
SELECT 't_object' ptn, 'ea_guid' pcn, 't_attribute' ctn, 'ea_guid' ccn, Count(*) CT, Count(distinct ct.ea_guid) CTDIS FROM [sparxDB].[dbo].t_attribute ct Inner Join [sparxDB].[dbo].t_object pt On ct.ea_guid = pt.ea_guid union 
SELECT 't_object' ptn, 'ea_guid' pcn, 't_attributetag' ctn, 'ea_guid' ccn, Count(*) CT, Count(distinct ct.ea_guid) CTDIS FROM [sparxDB].[dbo].t_attributetag ct Inner Join [sparxDB].[dbo].t_object pt On ct.ea_guid = pt.ea_guid union 
SELECT 't_object' ptn, 'ea_guid' pcn, 't_diagram' ctn, 'ea_guid' ccn, Count(*) CT, Count(distinct ct.ea_guid) CTDIS FROM [sparxDB].[dbo].t_diagram ct Inner Join [sparxDB].[dbo].t_object pt On ct.ea_guid = pt.ea_guid union 
SELECT 't_stereotypes' ptn, 'Stereotype' pcn, 't_attribute' ctn, 'Stereotype' ccn, Count(*) CT, Count(distinct ct.Stereotype) CTDIS FROM [sparxDB].[dbo].t_attribute ct Inner Join [sparxDB].[dbo].t_stereotypes pt On ct.Stereotype = pt.Stereotype union 
SELECT 't_stereotypes' ptn, 'Stereotype' pcn, 't_connector' ctn, 'Stereotype' ccn, Count(*) CT, Count(distinct ct.Stereotype) CTDIS FROM [sparxDB].[dbo].t_connector ct Inner Join [sparxDB].[dbo].t_stereotypes pt On ct.Stereotype = pt.Stereotype union 
SELECT 't_stereotypes' ptn, 'Stereotype' pcn, 't_diagram' ctn, 'Stereotype' ccn, Count(*) CT, Count(distinct ct.Stereotype) CTDIS FROM [sparxDB].[dbo].t_diagram ct Inner Join [sparxDB].[dbo].t_stereotypes pt On ct.Stereotype = pt.Stereotype  
