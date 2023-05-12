FROM nginx:alpine

WORKDIR /app

COPY ./entrypoint/entrypoint.sh /entrypoint.sh
COPY ./test/ .
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY ./nginx/service.sh .

RUN chmod 777 /entrypoint.sh && chmod 777 /app/service.sh && chown root:root /app/service.sh

RUN apk update && apk add bash && apk add curl && apk add nodejs-current npm
RUN npm run build
RUN mv ./build/* /usr/share/nginx/html

EXPOSE 8318

ENTRYPOINT ["/entrypoint.sh", "/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]
