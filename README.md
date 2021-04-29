# devops

Build a docker container with the following - Base : Centos8
python3.8
curl
jq
mtr
nmap-ncat
tcpdump
wget
curl
iproute
ipcalc
net-tools
bind-utils
nginx

#Additional
Configure NGINX on both 80 & 443
Create self-signed certs for enabling 443

Docker Pull
docker pull baburaj/centos8


Run
docker run -p 80:80 -p 443:443 -d --name demo -it baburaj/centos8
