FROM node:19.6.0-alpine3.17

WORKDIR /app
COPY package*.json .
RUN yarn install
COPY . .

ENV REACT_APP_NAME=Dovi
ENTRYPOINT ["yarn", "start"]
