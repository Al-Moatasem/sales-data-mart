USE EO_AdventureWorksDW2014
GO

-- create control table

IF EXISTS (SELECT
		*
	FROM sys.tables
	WHERE type = 'u'
	AND name = 'meta_control_table')
	DROP TABLE meta_control_table
	;

CREATE TABLE meta_control_table (
	id int IDENTITY (1, 1),
	source_table nvarchar(50) NOT NULL,
	last_load_date datetime
);


INSERT INTO meta_control_table (source_table, last_load_date)
	VALUES ('sales order header', '1900-01-01')
;
SELECT
	*
FROM meta_control_table;