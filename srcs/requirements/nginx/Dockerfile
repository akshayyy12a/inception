FROM debian:bookworm

RUN apt-get update && apt-get install -y nginx openssl

COPY config.conf /etc/nginx/nginx.conf

# cree le certif auto signe pour le https
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/ssl/private/nginx.key \
	-out /etc/ssl/certs/nginx.crt \
	-subj "/CN=shessoun.42.fr"

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]