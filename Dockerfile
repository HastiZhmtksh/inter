FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --force

COPY . .

RUN yarn build

COPY .env.sample .env.production

EXPOSE 5050

CMD yarn start
