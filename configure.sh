#!/usr/bin/env bash
HADOOP_VERSION="2.7"
SPARK_VERSION="2.1.1"
SPARK_HOME=/opt/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}
ln -s ${SPARK_HOME} /opt/spark
mkdir /opt/spark/jars
adduser spark
