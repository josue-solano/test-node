FROM node

RUN mkdir /user/src/app

WORKDIR /user/src/app

ENV PATH /user/src/app/node_modules/.bin:$PATH


COPY package*.json /user/src/app

RUN npm install

COPY . /user/src/app

EXPOSE 4000

CMD ["npm", "start"]