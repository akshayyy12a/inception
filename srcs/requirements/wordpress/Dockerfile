FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && apt-get install -y curl php php7.4-fpm php-mysql mariadb-client

COPY ./init.sh /

RUN chmod +x init.sh

ENTRYPOINT ["./init.sh"]