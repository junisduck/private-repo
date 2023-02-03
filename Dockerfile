FROM node:18-alpine

WORKDIR /app

COPY ./test/ .

### /app/test/~

RUN apk update && apk add bash
RUN npm install -g npm@9.3.1
RUN npm install -g serve && serve -n
# /app
RUN ls -al
#drwxr-xr-x    1 root     root          4096 Feb  1 15:11 .
#drwxr-xr-x    1 root     root          4096 Feb  1 15:12 ..
#-rw-r--r--    1 root     root           310 Feb  1 15:11 .gitignore
#-rw-r--r--    1 root     root          3359 Feb  1 15:11 README.md
#-rw-r--r--    1 root     root       1205015 Feb  1 15:11 package-lock.json
#-rw-r--r--    1 root     root           807 Feb  1 15:11 package.json
#drwxr-xr-x    2 root     root          4096 Feb  1 15:11 public
#drwxr-xr-x    2 root     root          4096 Feb  1 15:11 src

EXPOSE 8318

CMD [ "npm", "start" ]
