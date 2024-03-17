sudo apt update -y
sudo apt upgrade -y
sudo apt install -y curl

# checking node version to fix error npm v10.5.0 is known not to run on Node.js v10.19.0.  This version of npm supports the following node versions: `^18.17.0 || >=20.5.0`. You can find the latest version at https://nodejs.org/.
# Guides that help with troubleshooting and iterrating through multiple options:
# https://stackoverflow.com/questions/71956940/error-npm-is-known-not-to-run-on-node-js-v10-24-1-and-how-to-fix-it-dont-updat
# https://tecadmin.net/how-to-install-nvm-on-ubuntu-20-04/
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Suggested commands from error log:
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm install 18
nvm use 18

echo "Node version:"
node -v
echo "npm version:"
npm -v

echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt

# install pm2 globally
npm install -g pm2

# Change directory to the project
cd devopsec-ca2/

# installing dependencies
npm install

pm2 stop devopsec-ca2
pm2 start ./bin/www --name devopsec-ca2