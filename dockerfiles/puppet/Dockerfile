FROM flegrand/ubuntu

MAINTAINER Frederic Legrand Neurones Oxygen
ENV DEBIAN_FRONTEND noninteractive

ADD supervisor_puppet-master.conf /etc/supervisor/conf.d/puppet-master.conf

EXPOSE 22 8140
CMD ["/usr/bin/supervisord","-n"]
