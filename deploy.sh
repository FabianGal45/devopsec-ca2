sudo apt update -y
sudo apt install -y curl

# sudo apt install nodejs npm

# checking node version to fix error npm v10.5.0 is known not to run on Node.js v10.19.0.  This version of npm supports the following node versions: `^18.17.0 || >=20.5.0`. You can find the latest version at https://nodejs.org/.
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm --version

nvm install 18
nvm use 18

node -v
npm -v

sudo npm install -g pm2

pm2 stop devopsec-ca2

cd devopsec-ca2/

npm install

pm2 start ./bin/www --name devopsec-ca2