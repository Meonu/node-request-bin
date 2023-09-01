FROM node:18


RUN useradd -mU kknock
WORKDIR /home/kknock

COPY ./run.sh /home/kknock
RUN chmod +x run.sh

COPY index.js /home/kknock
RUN chmod 777 index.js

COPY package.json /home/kknock
RUN npm i


USER kknock
ENTRYPOINT ["./run.sh"]
