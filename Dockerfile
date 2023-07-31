FROM alpine:latest

WORKDIR /app

COPY ./entrypoint/entrypoint.sh /entrypoint.sh
COPY ./test/ .
COPY ./nginx/config/default.conf /etc/nginx/http.d/default.conf

RUN chmod 777 /entrypoint.sh

RUN apk update && apk add bash && apk add curl && apk add nginx && apk add nodejs-current npm
RUN npm install
RUN npm run build
RUN mv ./build/ /usr/share/nginx/html

EXPOSE 8318

ENTRYPOINT ["/entrypoint.sh", "/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]
