FROM node:15

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV NODE_ENV production

EXPOSE 8080
CMD [ "node", "index.js" ]
USER node
