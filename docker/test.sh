#!/bin/bash
cd $HADOOP_HOME
$HADOOP_HOME/bin/yarn jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-$HADOOP_VERSION.jar pi 10 15