FROM nginx:alpine

WORKDIR /app

COPY ./test/ .

### /app/test/~

#RUN apk update && apk add bash
RUN apt update 
RUN curl -fsSL https://deb.nodesource.com/setup_19.x | bash - && \ apt-get install -y nodejs
RUN npm install -g npm@9.3.1
RUN npm run build

EXPOSE 8318

CMD [ "npm", "start" ]
