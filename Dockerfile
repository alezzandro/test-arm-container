FROM multiarch/debian-debootstrap:armhf-wheezy

RUN apt-get update

RUN apt-get install -y apache2

RUN sed -i 's/80/8080/g' /etc/apache2/ports.conf

EXPOSE 8080

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
