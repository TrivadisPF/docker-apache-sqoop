FROM bde2020/hadoop-base:2.0.0-hadoop3.2.1-java8

MAINTAINER Guido Schmutz <guido.schmutz@trivadis.com>

USER root

ENV APACHE_SQOOP_VERSION 1.4.7
ENV APACHE_SQOOP_HADOOP_VERSION 2.6.0
ENV SQOOP_HOME /usr/local/sqoop

RUN curl -s https://www-eu.apache.org/dist/sqoop/${APACHE_SQOOP_VERSION}/sqoop-${APACHE_SQOOP_VERSION}.bin__hadoop-${APACHE_SQOOP_HADOOP_VERSION}.tar.gz | tar -xz -C /usr/local
RUN ln -s /usr/local/sqoop-${APACHE_SQOOP_VERSION}.bin__hadoop-${APACHE_SQOOP_HADOOP_VERSION} $SQOOP_HOME


ENV PATH $PATH:$HADOOP_HOME/bin:$SQOOP_HOME/bin

CMD ["tail -f /dev/null"]
