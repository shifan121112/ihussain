FROM centos:latest
MAINTAINER rashid78631@gmail.com
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/logxury.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip logxury.zip
RUN cp -rvf loxury/* /var/www/html/
RUN rm -rf loxury  logxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
