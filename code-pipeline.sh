#setup repo
cd ~
mkdir site
cd site/
yarn create next-app blank-app --typescript
cd blank-ap/

#build
yarn install
yarn run build

#pm2
pm2 delete "digonto.in"
pm2 --name "digonto.in" start yarn -- start
pm2 save

#set -p 8080 in package.json