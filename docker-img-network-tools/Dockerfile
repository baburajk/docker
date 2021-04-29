FROM centos:latest

MAINTAINER raj.anju@gmail.com

RUN dnf update -y
RUN dnf upgrade -y
RUN dnf install epel-release -y
RUN dnf install nginx -y
RUN dnf install python3.8 -y 
RUN dnf install curl jq mtr nmap-ncat tcpdump wget -y
RUN dnf install iproute ipcalc net-tools bind-utils -y

COPY index.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf

COPY localhost.pem /certs/security/localhost.pem
COPY localhost.key /certs/security/localhost.key

ENTRYPOINT [ "/usr/sbin/nginx","-g","daemon off;"]
