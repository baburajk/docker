FROM quay.io/centos/centos:stream8

MAINTAINER raj.anju@gmail.com

RUN yum update -y
RUN yum upgrade -y
RUN yum install epel-release -y
RUN yum install nginx -y
RUN yum install python3.9 -y 
RUN yum install curl jq mtr nmap-ncat tcpdump wget -y
RUN yum install iproute ipcalc net-tools bind-utils -y
RUN yum install stress-ng bird conntrack-tools dhcping fping iperf3 ipvsadm openssl nmap -y
RUN yum install scapy socat strace siege git -y
RUN yum install htop -y
#RUN yum install http://repo.iotti.biz/CentOS/7/x86_64/netstat-nat-1.4.10-1.x86_64.rpm -y
#RUN yum install https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/p/paris-traceroute-0.92-6.el7.x86_64.rpm


COPY index.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf
ADD nginx-start.sh /usr/bin/


RUN mkdir -pv /certs/security/

RUN openssl req -x509 -newkey rsa:2048 -nodes -days 9000 -keyout /certs/security/localhost.key -out /certs/security/localhost.pem -subj '/CN=localhost'


ENTRYPOINT [ "/usr/bin/nginx-start.sh" ]



