FROM centos:latest

MAINTAINER raj.anju@gmail.com

RUN dnf update -y
RUN dnf upgrade -y
RUN dnf install epel-release -y
RUN dnf install nginx -y
RUN dnf install python3.8 -y 
RUN dnf install curl jq mtr nmap-ncat tcpdump wget -y
RUN dnf install iproute ipcalc net-tools bind-utils -y
RUN dnf install http://repo.iotti.biz/CentOS/7/x86_64/netstat-nat-1.4.10-1.x86_64.rpm -y
RUN dnf install stress-ng -y

COPY index.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf
ADD nginx-start.sh /usr/bin/


RUN mkdir -pv /certs/security/

RUN openssl req -x509 -newkey rsa:2048 -nodes -days 9000 -keyout /certs/security/localhost.key -out /certs/security/localhost.pem -subj '/CN=localhost'


ENTRYPOINT [ "/usr/bin/nginx-start.sh" ]
