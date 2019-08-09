#!/usr/bin/env bash

echo "HADOOP_HOME=$HADOOP_HOME"
# /usr/local/Cellar/hadoop/3.1.2/libexec

cp -a $HADOOP_HOME/etc/hadoop/*.xml input
rm -Rf output
hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.1.2.jar grep input output 'h([a-z.]+\.[a-z.]+)+'

