FROM multiarch/debian-debootstrap:armhf-wheezy

RUN apt-get update

RUN apt-get install -y apache2

RUN sed -i 's/80/8080/g' /etc/apache2/ports.conf

RUN mkdir /var/run/apache2 && chmod 777 /var/run/apache2

RUN chmod 777 /var/lock

EXPOSE 8080

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
