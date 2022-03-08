#Install and setup nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm install lts/gallium
nvm use lts/gallium
node -v

npm install -g yarn
npm install -g pm2