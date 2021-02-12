FROM alpine:latest
RUN apk update && apk upgrade \
    apk add php8-apache2 php8
RUN rm -f /var/www/localhost/htdocs/index.html
RUN cat >> /var/www/localhost/htdocs/index.php <<EOF
<?php
phpinfo();
EOF
RUN rm -rf /var/cache/apk/*
CMD  [ "/usr/sbin/httpd", "-D", "FOREGROUND"]
