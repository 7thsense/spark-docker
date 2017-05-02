FROM 7thsense/java:8u131
MAINTAINER Erik LaBianca <erik@7thsense.io>
COPY bootstrap.sh /root/
RUN /bin/bash /root/bootstrap.sh
COPY install.sh /root/
RUN /bin/bash /root/install.sh
COPY configure.sh /root/
RUN /bin/bash /root/configure.sh
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod a+x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["spark-shell"]
