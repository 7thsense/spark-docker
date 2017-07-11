#!/usr/bin/env bash
#cd /usr/local/bin && curl -L -o coursier https://git.io/vgvpD && chmod +x coursier
mkdir -p /opt/spark/extra-jars
#coursier fetch --exclude org.jline:* org.apache.hadoop:hadoop-aws:2.7.3
#find ~/.coursier/cache/ -name "*.jar" | xargs install -t /opt/spark/extra-jars
#rm -rf ~/.coursier

echo "sys.exit" | gosu daemon /opt/spark/bin/spark-shell --packages org.apache.hadoop:hadoop-aws:2.7.3
