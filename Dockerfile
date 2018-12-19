FROM multiarch/debian-debootstrap:armhf-wheezy

RUN apt-get update

RUN apt-get install -y apache2

RUN sed -i 's/Listen 80/Listen 8080/g' /etc/apache2/ports.conf

