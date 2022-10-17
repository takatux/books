FROM node:18.11.0
WORKDIR /usr/src
COPY package*.json ./
RUN npm install
COPY . .
# RUN npm ci --only=production
EXPOSE 8080
CMD ["npm", "start"]
