FROM node:14
WORKDIR /usr/src
COPY package*.json ./
RUN npm install
COPY . /usr/src/app
# RUN npm ci --only=production
EXPOSE 3000
CMD ["npm", "start"]
