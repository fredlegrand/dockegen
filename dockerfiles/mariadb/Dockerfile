FROM flegrand/ubuntu

MAINTAINER Frederic Legrand Neurones Oxygen
ENV DEBIAN_FRONTEND noninteractive

ADD supervisor_mariadb.conf /etc/supervisor/conf.d/mariadb.conf
ADD my.cnf /etc/mysql/my.cnf

ADD drupal7.sql /drupal7.sql
ADD mysql.sh /mysql.sh
RUN /mysql.sh
RUN rm /mysql.sh
RUN rm /drupal7.sql

EXPOSE 22 3306
CMD ["/usr/bin/supervisord","-n"]
