FROM node:12.22.12

RUN mkdir -p /home/nodejs/app

WORKDIR /home/nodejs/app
COPY . .

RUN yarn config set strict-ssl false
RUN yarn install
RUN yarn build

EXPOSE 8080
CMD ["yarn", "serve"]