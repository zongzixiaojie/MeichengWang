#!/bin/bash
source ../../env.sh
/usr/local/hadoop/bin/hdfs dfs -rm -r /Que2/input/
/usr/local/hadoop/bin/hdfs dfs -rm -r /Que2/output
/usr/local/hadoop/bin/hdfs dfs -mkdir -p /Que2/input/
/usr/local/hadoop/bin/hdfs dfs -copyFromLocal ../framingham.csv /Que2/input/
/usr/local/spark/bin/spark-submit --master=spark://$SPARK_MASTER:7077  ./Que2.py hdfs://$SPARK_MASTER:9000/Que2/input/
#/usr/local/hadoop/bin/hdfs dfs -cat /Que2/output/*
