#!/bin/bash

$HADOOP_HOME/bin/hdfs namenode -format
$HADOOP_HOME/sbin/start-dfs.sh
$HADOOP_HOME/bin/hdfs dfs -mkdir -p /user/$HADOOP_USER
$HADOOP_HOME/bin/hdfs dfs -mkdir -p /user/hive/warehouse
$HADOOP_HOME/bin/hdfs dfs -chmod -R g+w /user/hive
$HADOOP_HOME/bin/hdfs dfs -mkdir -p /tmp
$HADOOP_HOME/sbin/start-yarn.sh

$HIVE_HOME/bin/schematool -dbType derby -initSchema
$HIVE_HOME/bin/hiveserver2