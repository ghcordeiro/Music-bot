FROM node:16.10.0-alpine

RUN mkdir -p /usr/src/app/node_modules && chown -R node:node /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm i 

COPY ./commands ./commands
COPY ./events ./events
COPY ./src ./src
COPY *.js ./

CMD ["npm","start"]