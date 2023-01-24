FROM centos:latest
MAINTAINER arbazmtn@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page284/rhino.zip  /var/www/html/
 WORKDIR  /var/www/html
 RUN unzip rhino.zip
 RUN cp -rvf rhino-html/* .
 RUN rm -rf rhino rhino.zip
 CMD ["/usr/bin/httpd", "-D",   "FOREGROUND"
 EXPOSE 80
