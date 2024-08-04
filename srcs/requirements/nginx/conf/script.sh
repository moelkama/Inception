#!/bin/bash

openssl req -x509 -nodes \
    -keyout "/etc/nginx/ssl/$SSL_KEY" \
    -out "/etc/nginx/ssl/$SSL_CERTIFICATE" \
    -subj "$SUBJ"

sed -i "s/SSL_CERTIFICATE/$SSL_CERTIFICATE/g" /etc/nginx/nginx.conf
sed -i "s/SSL_KEY/$SSL_KEY/g" /etc/nginx/nginx.conf

nginx -g "daemon off;"