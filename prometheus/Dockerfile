FROM alpine:3.20

COPY ./node_exporter/node_exporter /usr/bin/node_exporter
COPY ./node_exporter.service /etc/init.d/node_exporter

RUN chmod +x /usr/bin/node_exporter /etc/init.d/node_exporter && apk add openrc && openrc && touch /run/openrc/softlevel && rc-status && rc-update add node_exporter && rc-service node_exporter start

WORKDIR /app/

CMD ["rc-service", "node_exporter", "start"]


# docker run -it -p 4499 --expose 4499 --name node_exporter_test alpine
