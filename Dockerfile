FROM amazonlinux:2
MAINTAINER Erik LaBianca <erik@7thsense.io>
COPY bootstrap.sh /root/
RUN /bin/bash /root/bootstrap.sh
COPY install.sh /root/
RUN /bin/bash /root/install.sh
VOLUME /scratch /scratch2 /var/log /var/lib/daemon
ENV SPARK_HOME "/opt/spark"
ENV PATH "$PATH:$SPARK_HOME/bin"
ENV JAVA_HOME "/usr/lib/jvm/jre"
COPY spark-env.sh hive-site.xml spark-defaults.conf /opt/spark/conf/
COPY configure.sh /root/
RUN /bin/bash /root/configure.sh
COPY entrypoint.sh /usr/local/bin/spark-entrypoint.sh
RUN chmod a+x /usr/local/bin/spark-entrypoint.sh
ENTRYPOINT ["/usr/local/bin/spark-entrypoint.sh"]
CMD ["spark-shell"]
