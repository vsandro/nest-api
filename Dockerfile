FROM node:12.14.0-alpine3.11 AS development

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=development

RUN npm i -g rimraf

COPY . .

COPY  ./dist /usr/src/app/dist

CMD ["node", "dist/main"]