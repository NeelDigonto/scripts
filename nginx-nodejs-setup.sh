sudo curl -o nginx-setup.sh https://raw.githubusercontent.com/fanthomless/scripts/main/nginx-setup.sh
sudo curl -o nodejs-setup.sh https://raw.githubusercontent.com/fanthomless/scripts/main/nodejs-setup.sh

sudo chmod u=rx nginx-setup.sh
sudo chmod u=rx nodjes-setup.sh

sudo ./nginx-setup.sh
sudo ./nodejs-setup.sh
