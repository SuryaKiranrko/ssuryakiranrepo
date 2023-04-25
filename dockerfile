FROM ubuntu:latest
MAINTAINER Kiran
RUN apt-get update -y && apt-get install default-jre -y
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.74/bin/apache-tomcat-9.0.74.tar.gz /opt/
RUN tar -xvzf /opt/apache-tomcat-9.0.74.tar.gz && mv apache-tomcat-9.0.74 /opt/
CMD ["/opt/apache-tomcat-9.0.74/bin/startup.sh", "run"]
