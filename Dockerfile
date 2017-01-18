FROM valerianomanassero/java-centos:latest

MAINTAINER Zdravko Zdravkov zdravko@octoon.net

RUN rpm --import http://packages.elastic.co/GPG-KEY-elasticsearch
ADD elasticsearch.repo /etc/yum.repos.d/elasticsearch.repo
RUN yum -y install elasticsearch
RUN yum -y clean all

USER root
COPY docker-entrypoint.sh /
RUN chmod 755 /docker-entrypoint.sh

USER elasticsearch
RUN /usr/share/elasticsearch/bin/plugin install mobz/elasticsearch-head
RUN /usr/share/elasticsearch/bin/plugin install royrusso/elasticsearch-HQ
EXPOSE 9200
ENTRYPOINT ["/docker-entrypoint.sh"]
