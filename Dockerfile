FROM alpine:latest
RUN apk update && apk upgrade &&  apk add php8-apache2 php8
RUN rm -f /var/www/localhost/htdocs/index.html
COPY ./index.php /var/www/localhost/htdocs/index.php
COPY ./htaccess /var/www/localhost/htdocs/.htaccess
RUN rm -rf /var/cache/apk/*
EXPOSE 80
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND"]
