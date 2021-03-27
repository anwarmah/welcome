FROM ubuntu:latest
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN rm -rf /var/www/html/inex.html
ADD ./index.html /var/www/html
CMD apachectl -D FOREGROUND
