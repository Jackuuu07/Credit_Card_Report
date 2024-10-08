-- create table try(
-- Client_Num int, Card_Category text, Annual_Fees int, Activation_30_Days int,	Customer_Acq_Cost int);
-- ----------------------- to know secure file location of your myssql server ----------------------- 
-- select @@secure_file_priv;

-- ---------------------------- for any file u want to add data into csv ----------------------------------
-- load data infile 
-- 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/credit.csv'
-- into table try fields terminated by ','
-- ignore 1 lines;

-- select * from try;

-- -----------------------------------------Our main data start from here--------------------------

-- 0. Create a database 
CREATE DATABASE ccdd;
use ccdd;
-- ---------------------------------1. Create cc_detail table---------------------------------

CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);


load data infile 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/updated_credit_card.csv'
into table cc_detail fields terminated by ','
ignore 1 lines;

load data infile 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/updated_cc_add.csv'
into table cc_detail fields terminated by ','
ignore 1 lines;


desc cc_detail;
select * from cc_detail;





-- 2. Create cc_detail table

CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

load data infile 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customer.csv'
into table cust_detail fields terminated by ','
ignore 1 lines;

-- -----add another data for 31 jan


load data infile 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cust_add.csv'
into table cust_detail fields terminated by ','
ignore 1 lines;

select * from cust_detail;
desc cust_detail;

-- load data infile 
-- 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/credit.csv'
-- into table try fields terminated by ','
-- ignore 1 lines;

