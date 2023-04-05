FROM  centos:latest
MAINTAINER rohnny80@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page289/foodfinda.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip foodfinda.zip
RUN cp -rvf foodfinda/* .
RUN rm -rf foodfinda foodfinda.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22