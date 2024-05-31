#!/bin/sh

cp /tmp2/nginx.conf /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"