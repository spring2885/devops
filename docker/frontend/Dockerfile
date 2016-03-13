FROM httpd:2.4
MAINTAINER rob@spring-2885.org
RUN mkdir -p /www && \
    echo "Hello World" > /www/index.html
# COPY /etc/apache2/certs/* /usr/local/apache2/certs/
COPY ./httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
