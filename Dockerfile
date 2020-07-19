FROM nginx:1.18.0-alpine

RUN apk update && \
    apk add openssl&& \
    mkdir /app
    
COPY ./nginx/default.conf ./etc/nginx/conf.d

COPY ./web-project /app

EXPOSE 80
