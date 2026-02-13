FROM node:18
 HEAD

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]

WORKDIR /app
COPY app/ .
RUN npm install
EXPOSE 3000
CMD ["node", "server.js"]

>>>>>>> 394af4f (add app source)
