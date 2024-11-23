FROM node:22-alpine

WORKDIR /app

COPY package* .

RUN npm i

COPY . .

RUN npm run build

CMD ["npm", "run", "start"]