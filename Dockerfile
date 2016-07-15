FROM centos:7

RUN yum -y install ruby rubygems 

COPY redis-3.2.1.gem /opt
COPY redis-trib.rb /opt
RUN gem install /opt/redis-3.2.1.gem

COPY start_cluster.sh /opt/start_cluster.sh
RUN chmod 755 /opt/start_cluster.sh

CMD ["/opt/start_cluster.sh"]
