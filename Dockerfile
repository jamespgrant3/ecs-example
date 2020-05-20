FROM node:12.16

WORKDIR /usr/src/app

COPY package.json ./
COPY tsconfig.build.json ./

RUN npm install
RUN npm run build

COPY dist/ ./dist

EXPOSE 3000

CMD ["npm", "start"]
