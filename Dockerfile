FROM centos:latest

LABEL Component="nginx" \
      Name="centos/nginx-180-centos7" \
      Version="1.8.0" \
      Release="1"
ENTRYPOINT ["/bin/echo"]

RUN yum -y update && yum clean all
RUN yum -y install epel-release && \
    yum -y install nginx

RUN mkdir -pv /usr/share/nginx/html

RUN echo "Nginx on CentOS7" > /usr/share/nginx/html/index.html

