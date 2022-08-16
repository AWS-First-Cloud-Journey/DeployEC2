#!/bin/bash
cd /home/ec2-user/AWSFCJ
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
. ~/.nvm/nvm.sh
nvm install --lts
npm install 16
npm install express dotenv express-handlebars body-parser mysql
npm install --save-dev nodemon
npm install pm2@latest -g
node -v
npm -v
