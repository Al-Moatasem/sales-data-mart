USE master
go

IF Db_id('EO_AdventureWorksDW2014') IS NOT NULL
  DROP DATABASE EO_AdventureWorksDW2014;

CREATE DATABASE EO_AdventureWorksDW2014
go 
