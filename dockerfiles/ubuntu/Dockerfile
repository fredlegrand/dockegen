FROM ubuntu:14.04

MAINTAINER Frederic Legrand Neurones Oxygen
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y
RUN apt-get install -y supervisor 
RUN apt-get install -y telnet
RUN apt-get install -y unzip
RUN apt-get install -y dnsutils
RUN apt-get install -y vim
RUN apt-get install -y wget
RUN apt-get install -y curl 
RUN apt-get install -y puppet
RUN apt-get install -y git
RUN apt-get install -y gitolite
RUN apt-get install -y puppetmaster
RUN apt-get install -y apache2
RUN apt-get install -y gettext
RUN apt-get install -y ssh
RUN apt-get install -y mariadb-server
RUN apt-get install -y drupal7

RUN echo "Europe/Zurich" > /etc/timezone
RUN cp /usr/share/zoneinfo/Europe/Zurich /etc/localtime
RUN mkdir /var/run/sshd

ADD supervisor_puppet.conf /etc/supervisor/conf.d/puppet.conf
RUN puppet agent --enable

EXPOSE 22
CMD ["/usr/bin/supervisord","-n"]
