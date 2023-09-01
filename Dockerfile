FROM node:latest

RUN useradd -mU kknock
USER kknock

COPY index.js /home/kknock
COPY package.json /home/kknock

WORKDIR /home/kknock

RUN npm i
RUN node index.js
