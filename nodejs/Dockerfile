FROM centos:latest

MAINTAINER raj.anju@gmail.com

RUN dnf update -y
RUN dnf upgrade -y
RUN dnf install epel-release -y
RUN dnf install python3.8 -y
RUN dnf install curl jq mtr nmap-ncat tcpdump wget -y
RUN dnf install iproute ipcalc net-tools bind-utils -y
RUN dnf install http://repo.iotti.biz/CentOS/7/x86_64/netstat-nat-1.4.10-1.x86_64.rpm -y
RUN dnf install nodejs -y

ADD app.js /app.js

ENTRYPOINT [ "node","app.js"]

