FROM node:8.9.4

WORKDIR /usr/src/app
RUN export NODE_ENV='production'

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8000
RUN npm run build
CMD [ "npm", "start" ]