#!/bin/bash
sudo service ssh restart
echo command recieved "$@"

# export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))

export HDFS_NAMENODE_USER=$HADOOP_USER
export HDFS_DATANODE_USER=$HADOOP_USER
export HDFS_SECONDARYNAMENODE_USER=$HADOOP_USER
export YARN_RESOURCEMANAGER_USER=$HADOOP_USER
export YARN_NODEMANAGER_USER=$HADOOP_USER

$HADOOP_HOME/bin/hdfs namenode -format
$HADOOP_HOME/sbin/start-dfs.sh
$HADOOP_HOME/bin/hdfs dfs -mkdir -p /user/$HADOOP_USER
$HADOOP_HOME/sbin/start-yarn.sh

"$@"