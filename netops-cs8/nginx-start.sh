#!/bin/bash
echo "Container/HostName : $(hostname) " > /usr/share/nginx/html/index.html
echo "   " >> /usr/share/nginx/html/index.html
echo " - Interfaces - " >> /usr/share/nginx/html/index.html
ip addr show >> /usr/share/nginx/html/index.html

nginx -g "daemon off;"

