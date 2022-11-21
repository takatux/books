FROM node:19.1.0
WORKDIR /usr/src
COPY package*.json ./
RUN npm install
COPY . .
# RUN npm ci --only=production
EXPOSE 8080
CMD ["npm", "start"]
