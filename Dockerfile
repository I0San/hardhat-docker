# FROM --platform=linux/amd64 node:18-alpine as builder
FROM node:18-alpine as builder

WORKDIR /hardhat

COPY package*.json ./
COPY hardhat.config.js ./

RUN yarn install --non-interactive --frozen-lockfile

COPY . .

EXPOSE 8545

CMD [ "npx", "hardhat", "node" ]