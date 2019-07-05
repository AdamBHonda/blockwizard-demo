FROM sickp/centos-sshd

RUN yum install -y \
       java-1.8.0-openjdk \
       java-1.8.0-openjdk-devel

ENV JAVA_HOME /etc/alternatives/jre

VOLUME [ "/sys/fs/cgroup" ]
VOLUME ["/run"]

