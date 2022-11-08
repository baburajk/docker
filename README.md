
## Docker Image: CentOS Stream 8 + Network Utilities (*Listed Below )

```
#noclinx8c

python3.9
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
netstat-nat
stress-ng
bird
conntrack-tools
dhcping
fping
ipvsadm
openssl
iperf3
nmap
scapy
socat
strace
seige
git
htop

```

## Docker Image : Centos8 + Network Utilities (*Listed below*)

```
#netops 


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
netstat-nat
stress-ng
bird
conntrack-tools
dhcping
fping
ipvsadm
openssl
iperf3
nmap
scapy
socat
strace
seige
git
htop

```

## Extra

Running nginx on both 80 & 443

## Build & Run

```
Centos-Stream 8 
------------------

#docker build -t baburaj/netops-cs8 .
docker buildx build --platform linux/amd64,linux/arm64 . -t baburaj/noclnx8c --push
docker pull baburaj/noclnx8c
docker run -p 80:80 -p 443:443 -d --name noclnx8c -it baburaj/noclnx8c

root@nlab01:~#  docker run -p 80:80 -p 443:443 -d --name noclnx8c -it baburaj/noclnx8c
e8b9fec159decdec4c834792066d0813c5f1c5a8d96eea37f1e7f2bcf68a58c8
root@nlab01:~# curl -ks https://localhost:443
Container/HostName : e8b9fec159de

 - Interfaces -
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
13: eth0@if14: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default
    link/ether 02:42:ac:11:00:02 brd ff:ff:ff:ff:ff:ff link-netnsid 0
    inet 172.17.0.2/16 brd 172.17.255.255 scope global eth0
       valid_lft forever preferred_lft forever
root@nlab01:~# curl -ks http://localhost:80
Container/HostName : e8b9fec159de

 - Interfaces -
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
13: eth0@if14: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default
    link/ether 02:42:ac:11:00:02 brd ff:ff:ff:ff:ff:ff link-netnsid 0
    inet 172.17.0.2/16 brd 172.17.255.255 scope global eth0
       valid_lft forever preferred_lft forever



```


