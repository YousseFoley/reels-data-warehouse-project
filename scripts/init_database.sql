/*
=========================================================
Create Database and Schemas
=========================================================
Script Purpose:
       This script creates a new database named 'Reels_Pulse_Warehouse' after checking if it already exists.
       If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
       within the database: 'bronze', 'silver', and 'gold'.
WARNING:
    Running this script will drop the entire 'Reels_Pulse_Warehouse' database if it exists.
    A11 data in the database will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop & Recreate 'The Data Warehouse' Database

IF EXISTS ( SELECT 1 FROM sys.databases WHERE name = 'Reels_Pulse_Warehouse')
BEGIN
ALTER DATABASE Reels_Pulse_Warehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE Reels_Pulse_Warehouse;
END;
GO

-- Create Database 'Datawarehouse'

CREATE DATABASE Reels_Pulse_Warehouse;
GO

USE Reels_Pulse_Warehouse;
GO

-- Creating Schemas

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
