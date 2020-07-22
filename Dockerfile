FROM centos:8

RUN curl -Lo mysql-server.rpm https://downloads.mysql.com/archives/get/p/23/file/MySQL-server-5.1.73-1.glibc23.x86_64.rpm \
  && curl -Lo mysql-client.rpm https://downloads.mysql.com/archives/get/p/23/file/MySQL-client-5.1.73-1.glibc23.x86_64.rpm \
  && yum install -y mysql-server.rpm mysql-client.rpm \
  && rm mysql-server.rpm mysql-client.rpm \
  && yum clean all

USER mysql

CMD ["mysqld_safe"]

EXPOSE 3306

