FROM nginx:alpine

WORKDIR /app

#COPY ./entrypoint/entrypoint.sh /entrypoint.sh

COPY ./test/ .
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY ./nginx/service.sh .

RUN chmod 777 /entrypoint.sh
#RUN chmod 777 /app/service.sh && chown root:root /app/service.sh

RUN apk update && apk add bash && apk add curl && apk add nodejs-current npm
RUN npm run build
RUN mv ./build/* /usr/share/nginx/html

#RUN ["/usr/sbin/nginx", "-s", "reload"]
#RUN sh /app/service.sh

#RUN npm install -g npm@9.3.1
#RUN apt-get update
#RUN curl -fsSL https://deb.nodesource.com/setup_19.x | bash -
#RUN apt-get install -y nodejs
#RUN npm install -g npm@9.3.1
#RUN npm run build

EXPOSE 8318

#CMD [ "/usr/share/nginx", "-s", "reload" ]
#ENTRYPOINT ["/entrypoint.sh"]
ENTRYPOINT ["sleep","5"]
