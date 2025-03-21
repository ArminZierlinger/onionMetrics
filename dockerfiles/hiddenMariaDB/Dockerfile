FROM debian:stable-slim

RUN apt update && apt upgrade
RUN apt install -y --no-install-recommends tor
RUN apt install -y --no-install-recommends mariadb-server
RUN apt clean
RUN mkdir /home/scripts

COPY entrypoint.sh /home/scripts/entrypoint.sh
RUN chmod 700 home/scripts/entrypoint.sh
ENTRYPOINT ["home/scripts/entrypoint.sh"]

#RUN echo "\
#HiddenServiceDir /var/lib/tor/hidden_service/\n\
#HiddenServicePort 3306 127.0.0.1:3306\n"\ 
#>> /etc/tor/torrc


