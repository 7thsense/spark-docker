#!/usr/bin/env bash
install -d -o 2 -g 2 /var/lib/daemon
usermod -d /var/lib/daemon daemon
sync

HADOOP_VERSION="2.7"
SPARK_VERSION="2.1.1"
cd /opt
wget --quiet http://d3kbcqa49mib13.cloudfront.net/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz
tar -xzf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz
rm spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz
mv /opt/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} /opt/spark


