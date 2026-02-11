FROM node:20-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npm install --no-audit --no-fund
COPY . .
CMD ["npm", "run", "dev"]