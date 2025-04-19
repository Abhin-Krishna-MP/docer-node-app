FROM node:18

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 3000

ENV NAME PHASE-1

CMD ["npm","start"]