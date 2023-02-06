FROM nginx:latest

WORKDIR /app

COPY ./test/ .
COPY ./entrypoint/entrypoint.sh /

### /app/test/~

#RUN apk update && apk add bash

RUN apt-get update 
RUN curl -fsSL https://deb.nodesource.com/setup_19.x | bash - 
RUN apt-get install -y nodejs
RUN npm install -g npm@9.3.1
RUN npm run build

# build file move
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
RUN mv /app/build/* /usr/share/nginx/html

RUN chmod 755 /entrypoint.sh
EXPOSE 8318

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD [ "serivce", "nginx", "reload" ]
