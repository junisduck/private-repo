FROM python:3.13.0a6-alpine3.18

WORKDIR /app

COPY ./entrypoint/entrypoint.sh /entrypoint.sh
COPY ./jun-app/ .
COPY ./nginx/config/default.conf /etc/nginx/http.d/default.conf

RUN chmod 777 /entrypoint.sh

RUN apk update && apk add bash && apk add curl && apk add nginx && apk add nodejs npm
RUN npm install
RUN npm run build
RUN mv ./build/ /usr/share/nginx/html

EXPOSE 8318

ENTRYPOINT ["/entrypoint.sh", "/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]
