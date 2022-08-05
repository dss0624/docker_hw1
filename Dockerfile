FROM ubuntu:18.04
RUN apt-get update && apt-get install -y apache2
RUN sed -i 's/"Listen 80"/"Listen 8080"/g' /etc/apache2/ports.conf
EXPOSE 80
WORKDIR /Docker
COPY resources/index.html /var/www/html/
RUN useradd -ms /bin/bash hillel_devops
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
CMD echo 'Container successfully run'

