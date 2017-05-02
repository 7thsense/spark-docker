#!/usr/bin/env bash
HADOOP_VERSION="2.7"
SPARK_VERSION="2.1.0"
cat > /etc/profile.d/spark.sh <<-EOF
export JAVA_HOME=/usr/java/latest
export SPARK_HOME=/opt/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}
pathmunge \$SPARK_HOME/bin
EOF


