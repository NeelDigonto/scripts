#Install and setup nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc
nvm install lts/hydrogen
nvm use lts/hydrogen
node -v

npm install -g yarn
npm install -g pm2
npm install -g nodemon
