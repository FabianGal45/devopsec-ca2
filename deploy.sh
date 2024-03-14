sudo apt update && sudo apt install nodejs npm

sudo npm install -g pm2

pm2 stop devopsec-ca2

cd devopsec-ca2/

npm install

pm2 start ./bin/www --name devopsec-ca2