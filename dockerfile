FROM ubuntu
MAINTAINER arbazmtn@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page284/maker.zip    /var/www/html/
 WORKDIR  /var/www/html
 RUN unzip maker.zip
 RUN cp -rvf maker/* .
 RUN rm -rf maker  maker.zip
 CMD ["/usr/bin/httpd", "-D",   "FOREGROUND"]
 EXPOSE 80
