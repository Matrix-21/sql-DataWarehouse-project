/*
🧱 Bronze Layer – Table DDL Script
This script defines the Data Definition Language (DDL) structure for the bronze schema in the DataWarehouse database. It performs the following actions:
    Drops existing tables in the bronze schema if they already exist.
    Creates new tables as per the bronze layer structure, which typically stores raw, unprocessed data ingested from various source systems.
    💡 Bronze Layer is the first stage in the medallion architecture. It acts as the staging area for incoming data, preserving its original format for traceability and auditing.
    ⚠️ Note: Running this script will delete and recreate existing bronze tables. Ensure no critical data is lost before execution.

Use this script whenever you need to reset or reinitialize the bronze layer's table structure.
*/


--creating tables for source crm

IF OBJECT_ID ('bronze.crm_cust_info','U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info (
  cst_id INT,
  cst_key NVARCHAR(50),
  cst_firstname NVARCHAR(50),
  cst_lastname NVARCHAR(50),
  cst_marital_status NVARCHAR(50),
  cst_gndr NVARCHAR(50),
  cst_create_date DATE
);

IF OBJECT_ID ('bronze.crm_prd_info','U') IS NOT NULL
	DROP TABLE bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info (
  prd_id INT,
  prd_key NVARCHAR(50),
  prd_nm NVARCHAR(50),
  prd_cost INT,
  prd_line NVARCHAR(50),
  prd_start_dt DATE,
  prd_end_dt DATE
);

IF OBJECT_ID ('bronze.crm_sales_details','U') IS NOT NULL
	DROP TABLE bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details (
  sls_ord_num NVARCHAR(50),
  sls_prd_key NVARCHAR(50),
  sls_cust_id INT,
  sls_order_dt INT,
  sls_ship_dt INT,
  sls_due_dt INT,
  sls_sales INT,
  sls_quantity INT,
  sls_price INT
);


-- creating tables for source erp

IF OBJECT_ID ('bronze.erp_loc_a101','U') IS NOT NULL
	DROP TABLE bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101(
  cid NVARCHAR(50),
  cntry NVARCHAR(50)
);

IF OBJECT_ID ('bronze.erp_cust_az12','U') IS NOT NULL
	DROP TABLE bronze.erp_cust_az12;
CREATE TABLE bronze.erp_cust_az12(
  cid NVARCHAR(50),
  bdate DATE,
  gen NVARCHAR(50)
);

IF OBJECT_ID ('bronze.erp_px_cat_g1v2','U') IS NOT NULL
	DROP TABLE bronze.erp_px_cat_g1v2;
CREATE TABLE bronze.erp_px_cat_g1v2(
  id NVARCHAR(50),
  cat NVARCHAR(50),
  subcat NVARCHAR(50),
  maintenance NVARCHAR(50)
);
