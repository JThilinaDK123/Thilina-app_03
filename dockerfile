FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT = 8089

EXPOSE 8089

CMD [ "node", "server/demo.js" ]