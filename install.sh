#!/usr/bin/env bash
install -d -o2 -g2 /scratch /scratch2 /var/log
install -d -o2 -g2 /var/lib/daemon
usermod -d /var/lib/daemon daemon
sync

HADOOP_VERSION="2.7"
SPARK_VERSION="2.2.1"
cd /opt
curl -o spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz http://mirrors.advancedhosters.com/apache/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz
tar -xzf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz
rm spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz
mv /opt/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} /opt/spark
rmdir /opt/spark/logs
ln -s /var/log/spark /opt/spark/logs


