#!/bin/bash
echo "#########################################################################"
echo "## SELF SIGNED CERTIFICATE FOR DEVELOPMENT ONLY - `date +%A` - `date +%Y-%m-%d_%Hh%Mm%Ss` ##########"
echo "#########################################################################"

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx/ssl/nginx-selfsigned.key -out nginx/ssl/nginx-selfsigned.crt -config nginx/ssl/ssl.conf

# IF HAVE DOMAIN
# sudo apt-get install -y certbot &
# sudo certbot certonly -n --webroot --agree-tos --email ${USER_EMAIL} -w . -d {DOMAIN}