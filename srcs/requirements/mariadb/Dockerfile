FROM debian:bookworm

RUN apt-get update && apt-get install -y mariadb-server

COPY config.conf /etc/mysql/conf.d/
COPY init.sh /init.sh
RUN chmod +x /init.sh
ENTRYPOINT ["/init.sh"]

CMD ["mysqld"]

