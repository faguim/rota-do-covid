FROM node:10

WORKDIR /app

COPY --chown=node:node ./src/adonisjs .

RUN npm i npm
RUN npm i -g @adonisjs/cli

RUN npm install

USER node

CMD [ "npm", "start"]
#ENTRYPOINT ["./bootstrap.sh"]