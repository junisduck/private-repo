FROM nginx:alpine

WORKDIR /app

COPY ./test/ .
COPY ./node_modules/ .

### /app/test/~

RUN apk update && apk add bash
RUN npm install -g npm@9.3.1
RUN npm run build

EXPOSE 8318

CMD [ "npm", "start" ]
