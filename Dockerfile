FROM node:19.6.0-alpine3.17

USER 1001
WORKDIR /app
COPY package*.json .
RUN yarn install
COPY . .
EXPOSE 3000
ENTRYPOINT ["yarn", "start"]
