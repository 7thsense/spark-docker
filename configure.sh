#!/usr/bin/env bash
cd /usr/local/bin && curl -L -o coursier https://git.io/vgvpD && chmod +x coursier
mkdir -p /opt/spark/extra-jars
coursier fetch \
    --exclude "com.fasterxml.jackson.core:*" \
    --exclude "jline:*" \
    --exclude "org.mortbay.jetty:*" \
    org.apache.hadoop:hadoop-aws:2.7.5 \
    | xargs -I % install % /opt/spark/extra-jars
rm -rf ~/.coursier

#echo "sys.exit" | gosu daemon /opt/spark/bin/spark-shell --packages org.apache.hadoop:hadoop-aws:2.7.3
