CREATE TABLE online_retail_data (
  record_no INT,
  invoice STRING,
  stock_code STRING,
  description STRING,
  quantity INT,
  invoice_date STRING,
  price DOUBLE,
  customer_id INT,
  country STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

LOAD DATA INPATH '/user/hive/warehouse/online_retail_data.csv'
INTO TABLE online_retail_data;