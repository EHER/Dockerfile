FROM eher/java

MAINTAINER Alexandre Eher <alexandre@eher.com.br>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y curl unzip sudo

ADD setup-agent.sh /setup-agent.sh
RUN useradd -m teamcity

EXPOSE 9090
CMD sudo -u teamcity -s -- sh -c "TEAMCITY_SERVER=$TEAMCITY_SERVER bash /setup-agent.sh run"
