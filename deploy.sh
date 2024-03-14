sudo apt update -y
sudo apt upgrade -y
sudo apt install -y curl

# sudo apt install nodejs npm

# checking node version to fix error npm v10.5.0 is known not to run on Node.js v10.19.0.  This version of npm supports the following node versions: `^18.17.0 || >=20.5.0`. You can find the latest version at https://nodejs.org/.
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
# Suggested commands from error log:
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


# source ~/.bashrc
# nvm --version

nvm install 18
nvm use 18

node -v
npm -v

sudo npm install -g pm2

cd devopsec-ca2/

npm install

pm2 stop devopsec-ca2

pm2 start ./bin/www --name devopsec-ca2