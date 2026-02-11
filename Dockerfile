FROM node:20-alpine
WORKDIR /usr/src/app
COPY ./package /packages
RUN npm install
COPY package.json package-lock.json* ./
RUN npm install --no-audit --no-fund
COPY . .
CMD ["npm", "run", "dev"]