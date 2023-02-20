FROM node:19.6.0-alpine3.17

USER 1001
WORKDIR /app
COPY package*.json .
RUN yarn install
COPY . .
EXPOSE 3000
ENV REACT_APP_NAME=dovi
ENTRYPOINT ["yarn", "start"]
