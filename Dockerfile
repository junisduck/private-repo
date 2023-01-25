FROM node:18-alpine

WORKDIR /app

COPY ./react-docker/ .

RUN apk update && apk add bash
RUN npm install -g npm@9.3.1 

EXPOSE 3000

CMD [ "npm", "start" ]
