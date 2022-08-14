FROM node:16-alpine
WORKDIR /AWS-FCJ-Management
COPY package.json .
RUN npm install -g nodemon --save-dev nodemon express dotenv express-handlebars body-parser mysql
COPY . .
EXPOSE 5000
CMD npm start