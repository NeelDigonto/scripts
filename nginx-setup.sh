# basic updates
sudo apt update
sudo apt -y upgrade


# setup python
sudo apt install -y python3-pip
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev


# install and setup nginx
sudo apt install -y nginx
sudo ufw allow OpenSSH
sudo ufw allow "Nginx Full"

rm -rf /etc/nginx/sites-enabled/
#touch /etc/nginx/config.d/digonto.in.conf
sudo curl -o digonto.in.config https://raw.githubusercontent.com/fanthomless/scripts/digonto.in.config
sudo nginx -s reload
# sudo service nginx restart


#setup certbot
sudo apt install -y certbot python3-certbot-nginx
sudo certbot --nginx -d digonto.in -d www.digonto.in
#sudo systemctl status certbot.timer
#sudo certbot renew --dry-run

