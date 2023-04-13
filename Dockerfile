FROM node 
WORKDIR /exercise
COPY package.json .
RUN npm install
COPY . .
ENV ENV_NODE=production
EXPOSE 3000
CMD [ "node", "server.js" ]