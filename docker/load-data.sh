#!/bin/bash

$HADOOP_HOME/bin/hdfs dfs -put "/data/online_retail_data.csv" "/user/hive/warehouse/online_retail_data.csv"

$HIVE_HOME/bin/beeline --verbose=true -n db_user -u jdbc:hive2://localhost:10000 -f /load-csv.sql