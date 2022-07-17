FROM node:12-alpine

RUN apk add --update nodejs npm

COPY package.json ./

COPY . ./app

WORKDIR /app

RUN npm install

WORKDIR /app

EXPOSE 3100

CMD ["npm", "start"]