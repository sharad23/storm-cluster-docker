FROM sharad23/storm:latest
MAINTAINER Wurstmeister

EXPOSE 6700
EXPOSE 6701
EXPOSE 6702
EXPOSE 6703
EXPOSE 8000

RUN apt-get -y update
RUN apt-get install -y python3-dev
RUN apt-get install -y python3-pip
RUN pip3 install virtualenv
RUN virtualenv /data/virtualenvs/wordcount
#RUN source /data/virtualenvs/wordcount/bin/activate
#RUN pip3 install streamparse==3.13.1
ADD . /test
#RUN /test/create_env.sh
RUN /usr/bin/config-supervisord.sh supervisor
RUN /usr/bin/config-supervisord.sh logviewer
CMD /usr/bin/start-supervisor.sh
