#!/bin/bash

OUTPUT_PATH=/user/hadoop/output

$HADOOP_HOME/bin/hadoop \
  jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-$HADOOP_VERSION.jar \
  -input /user/hive/warehouse/online_retail_data/online_retail_data.csv\
  -output $OUTPUT_PATH/ \
  -mapper /mapreducer/unique-customers/mapper.py \
  -reducer /mapreducer/unique-customers/reducer.py \
  -file /mapreducer/unique-customers/mapper.py \
  -file /mapreducer/unique-customers/reducer.py

$HADOOP_HOME/bin/hdfs dfs -cat $OUTPUT_PATH/part-00000
