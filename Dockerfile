FROM node:13.8.0

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY ./proxy.js .

EXPOSE 8081

ENV NODE_ENV=production

CMD [ "npm", "run", "start" ]


