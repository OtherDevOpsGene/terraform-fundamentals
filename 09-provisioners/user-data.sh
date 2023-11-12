#! /bin/bash
DOCROOT=/var/www/html
PORT=8080

mkdir -p ${DOCROOT}
nohup busybox httpd -f -h ${DOCROOT} -p ${PORT} &
