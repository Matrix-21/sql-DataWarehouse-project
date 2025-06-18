/*
🗃️ DataWarehouse SQL Project – Schema Setup

This script initializes a clean SQL environment for a data warehousing project. It performs the following operations:
Drops and recreates the DataWarehouse database if it already exists (⚠️ This action is destructive and will delete all existing data).
Creates three structured schemas within the database:
        bronze – for raw, ingested data
        silver – for cleaned and transformed data
        gold – for aggregated, analytics-ready data

    ⚠️ Warning: Running this script will permanently delete the existing DataWarehouse database (if present). Please ensure you have backups before execution.

This setup follows the medallion architecture pattern commonly used in modern data engineering workflows.
*/


USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO


-- create Database 'DataWarehouse'
USE master;
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
