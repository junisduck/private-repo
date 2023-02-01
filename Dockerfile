FROM node:18-alpine

WORKDIR /app

COPY ./test/ .

RUN apk update && apk add bash
RUN npm install -g npm@9.3.1
RUN npm run build

EXPOSE 3000

CMD [ "npm", "start" ]
