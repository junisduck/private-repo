FROM alpine:latest

COPY ./node_exporter/node_exporter /usr/bin/node_exporter
COPY ./node_exporter.service /etc/systemd/system/

RUN chmod +x /usr/bin/node_exporter /etc/systemd/system/node_exporter.service
RUN apk add openrc && touch /run/openrc/softlevel && rc-status && rc-service node_exporter start

WORKDIR /app/

# docker run -it -p 4499 --expose 4499 --name node_exporter_test alpine