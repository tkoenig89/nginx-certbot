FROM nginx:1.23.2-alpine
LABEL maintainer="Tobias Koenig"
LABEL version="0.1.0"

ENV CERTBOT_DOMAINS= \
    CERTBOT_EMAIL= \
    RUN_CERTBOT=false \
    CERTBOT_OPTIONS=

RUN apk add inotify-tools certbot openssl bash certbot-nginx

WORKDIR /opt

COPY command ./

CMD ["./command"]
