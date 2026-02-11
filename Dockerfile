FROM node:20-alpine

WORKDIR /the/workdir/path

COPY ./package /packages

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]