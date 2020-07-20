FROM alpine:3.6

RUN apk update && \
    apk add nodejs && \
    apk add nodejs-npm && \
    mkdir /app

WORKDIR /app

COPY . .

RUN npm i 

EXPOSE 80

CMD [ "npm", "start" ]
