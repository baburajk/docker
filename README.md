
## Docker Image: CentOS Stream 8 + Network Utilities (*Listed Below )

```
#netops-cs8

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

docker build -t baburaj/netops-cs8 .
docker run -p 80:80 -p 443:443 -d --name netops-cs8 -it baburaj/netops-cs8
docker push baburaj/netops-cs8

Centos 8 (Old)
----------------

docker build -t baburaj/netops:latest .
docker run -p 80:80 -p 443:443 -d --name netops -it baburaj/netops
docker push baburaj/netops

Validate 
----------------

[root@netops2 build]# curl -s http://[::]:80
Success!! - nginx run time on Centos8

[root@netops2 build]# curl -ks https://[::]:443
Success!! - nginx run time on Centos8


```


