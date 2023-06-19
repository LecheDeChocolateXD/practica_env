FROM centos:centos7

VOLUME /galera

RUN yum update -y 
RUN yum install openssh-server firewalld less -y

COPY maria_repo /etc/yum.repos.d/MariaDB.repo/

RUN yum install MariaDB-server MariaDB-client galera rsync -y

COPY firewalld.sh /root/

RUN chmod +x firewalld.sh
RUN bash firewalld.sh

EXPOSE 3306
EXPOSE 4444
EXPOSE 4567
EXPOSE 4568
EXPOSE 4567/udp
