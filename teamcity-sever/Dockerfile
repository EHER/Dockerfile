FROM eher/java

MAINTAINER Alexandre Eher <alexandre@eher.com.br>

VOLUME  ["/data/teamcity"]
ENV TEAMCITY_DATA_PATH /data/teamcity

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y curl

ENV TEAMCITY_PACKAGE TeamCity-9.0.3.tar.gz
ENV TEAMCITY_DOWNLOAD http://download.jetbrains.com/teamcity
RUN curl -#LO $TEAMCITY_DOWNLOAD/$TEAMCITY_PACKAGE && \
    tar zxf $TEAMCITY_PACKAGE -C /opt && \
    rm -rf $TEAMCITY_PACKAGE

EXPOSE 8111
CMD ["/opt/TeamCity/bin/teamcity-server.sh", "run"]
