FROM nginx:alpine

COPY ./entrypoint/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

COPY ./test/ .
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

RUN mv /app/build/* /usr/share/nginx/html

WORKDIR /app

RUN apk update && apk add bash && apk add curl && apk add nodejs-current npm
RUN npm run build

#RUN npm install -g npm@9.3.1
#RUN apt-get update
#RUN curl -fsSL https://deb.nodesource.com/setup_19.x | bash -
#RUN apt-get install -y nodejs
#RUN npm install -g npm@9.3.1
#RUN npm run build

EXPOSE 8318

CMD [ "service", "nginx", "reload" ]

ENTRYPOINT ["/entrypoint.sh"]
