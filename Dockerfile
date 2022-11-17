FROM node:16-alpine

RUN apk update && apk add bash
RUN mkdir -p /app/node_modules && chmod -R 777 /app

# Add wait-for-it
COPY ./wait-for-it.sh wait-for-it.sh
COPY ./entrypoint.sh entrypoint.sh 
RUN ["chmod", "+x", "./wait-for-it.sh"] 

USER node
WORKDIR /app

COPY package.json ./
COPY yarn.lock ./
COPY . .

RUN yarn

EXPOSE 3000
