FROM tutum/apache-php

MAINTAINER Agnese Salutari @agnsal

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y libc6-i386 && apt-get install -y lib32ncurses5 && apt-get install -y lib32stdc++6 && apt-get install -y vim && apt-get install -y build-essential && apt-get -y install wget git
RUN git clone git://github.com/agnsal/ServerDALI && git clone git://github.com/AAAI-DISIM-UnivAQ/DALI
RUN apt-get -y install python redis-server python-redis git build-essential libevent-dev
RUN /etc/init.d/redis-server start

EXPOSE 80/tcp
# Redis port
