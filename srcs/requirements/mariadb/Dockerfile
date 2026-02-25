FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && apt-get install -y mariadb-server netcat

COPY init.sh /init.sh
RUN chmod +x /init.sh

ENTRYPOINT ["./init.sh"]