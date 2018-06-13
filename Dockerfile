FROM centos:latest

#ENV http_proxy="xxx"
#ENV https_proxy="xxx"


RUN yum update &&  yum install -y haproxy  && yum clean all
RUN yum install -y net-tools.x86_64 && yum clean all

COPY docker-entrypoint.sh /entrypoint.sh
COPY haproxy.cfg /etc/haproxy/haproxy.cfg

ENTRYPOINT [ "/entrypoint.sh" ]

