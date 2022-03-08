sudo curl -o nginx-setup.sh https://raw.githubusercontent.com/fanthomless/scripts/nginx-setup.sh
sudo curl -o nodejs-setup.sh https://raw.githubusercontent.com/fanthomless/scripts/nodejs-setup.sh

chmod u=rx nginx-setup.sh
chmod u=rx nodjes-setup.sh

./nginx-setup.sh
./nodejs-setup.sh