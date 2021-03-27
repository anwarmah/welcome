FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN rm -rf /var/www/html/inex.html
ADD ./index.html /var/www/html
CMD apachectl -D FOREGROUND
