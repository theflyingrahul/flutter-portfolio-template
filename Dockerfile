FROM ubuntu/apache2:latest
RUN apt update
RUN apt install -y certbot python3-certbot-apache
RUN certbot --apache --non-interactive --agree-tos -m theflyingrahul@gmail.com -d theflyingrahul.com -d www.theflyingrahul.com
COPY ./build/web /var/www/html
