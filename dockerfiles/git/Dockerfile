FROM flegrand/ubuntu

MAINTAINER Frederic Legrand Neurones Oxygen
ENV DEBIAN_FRONTEND noninteractive

ADD supervisor_sshd.conf /etc/supervisor/conf.d/sshd.conf
RUN /usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf &
#RUN supervisorctl start sshd &
ADD root_id_dsa /root/.ssh/id_dsa
ADD root_id_dsa.pub /root/.ssh/id_dsa.pub
ADD root_id_dsa.pub /tmp/id_dsa.pub
RUN chmod 600 /root/.ssh/id_dsa

RUN sudo adduser --system --shell /bin/bash --group --disabled-password --home /home/git git
ADD gitolite_gitolite.rc /home/git/.gitolite.rc
RUN git config --global user.email "f.legrand@neurones-oxygen.com"
RUN git config --global user.name "flegrand"

#RUN git clone git@127.0.0.1:gitolite-admin.git
#ADD gitolite_gitolite.conf  gitolite-admin/conf/gitolite.conf
##
#RUN git commit -a -m "ajout dockgen repo"
#RUN git push origin master
#
EXPOSE 22
CMD ["/usr/bin/supervisord","-n"]
