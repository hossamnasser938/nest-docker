FROM node:18-alpine

COPY ["package.json", "yarn.lock", "./"]

RUN yarn install

COPY . .

RUN npm i -g @nestjs/cli

RUN yarn build

CMD ["yarn", "start:prod"]

EXPOSE 3000
