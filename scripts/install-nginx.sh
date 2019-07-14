#!/bin/sh
set -e
set -x

#Configure NGINX repository
zypper --non-interactive addrepo -G -t yum -c 'http://nginx.org/packages/sles/12' nginx

#Install NGINXI
zypper --non-interactive install nginx

#Enable NGINX to run at startup
systemctl enable nginx

#Start NGINX Service
systemctl start nginx