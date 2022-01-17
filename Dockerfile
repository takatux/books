FROM node:17.3.1
WORKDIR /usr/src
COPY package*.json ./
RUN npm install
COPY . .
# RUN npm ci --only=production
EXPOSE 8080
CMD ["npm", "start"]
