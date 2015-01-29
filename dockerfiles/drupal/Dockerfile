FROM flegrand/ubuntu

MAINTAINER Frederic Legrand Neurones Oxygen
ENV DEBIAN_FRONTEND noninteractive

ADD supervisor_apache.conf /etc/supervisor/conf.d/apache.conf
RUN rm /etc/apache2/conf-available/drupal7.conf
RUN ln -s /etc/drupal/7/apache2.conf /etc/apache2/conf-available/drupal.conf
RUN ln -s /etc/apache2/conf-available/drupal.conf /etc/apache2/conf-enabled/drupal.conf
ADD drupal_dbconfig.php /etc/drupal/7/sites/default/dbconfig.php


EXPOSE 22 80
CMD ["/usr/bin/supervisord","-n"]
