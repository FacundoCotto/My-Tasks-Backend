FROM node:20-alpine AS base 

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install cross-env --omit=dev

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]