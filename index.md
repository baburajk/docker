## Welcome to GitHub Pages

You can use the [editor on GitHub](https://github.com/baburajk/docker/edit/gh-pages/index.md) to maintain and preview the content for your website in Markdown files.

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site, from the content in your Markdown files.

### Docker Image : Centos8 + Network Utilities (Listed below)



Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
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
```

 
### Extra

Running nginx on both 80 & 443

 
## Build & Run

docker build -t baburaj/netops:latest .
docker run -p 80:80 -p 443:443 -d --name netops -it baburaj/netops


[root@netops2 build]# curl -s http://[::]:80
Success!! - nginx run time on Centos8

[root@netops2 build]# curl -ks https://[::]:443
Success!! - nginx run time on Centos8

docker push baburaj/netops
