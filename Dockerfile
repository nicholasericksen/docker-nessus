FROM centos:7

COPY Nessus-8.10.1-es7.x86_64.rpm /tmp/
RUN rpm -i /tmp/Nessus-8.10.1-es7.x86_64.rpm

EXPOSE 8834
ENTRYPOINT ["/opt/nessus/sbin/nessusd"]
