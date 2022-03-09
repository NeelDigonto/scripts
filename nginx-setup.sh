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
# sudo ufw enable # interactive, so can't be automated
sudo ufw --force enable


# change working directory 
WORK_DIRECTORY="work-dir"

cd ~
mkdir -p $WORK_DIRECTORY
cd $WORK_DIRECTORY


sudo rm -rf /etc/nginx/sites-enabled/* # doesnt remove .dirs, use find or a regex to do that if required
#touch /etc/nginx/config.d/digonto.in.conf
cd /etx/nginx/config.d/
sudo curl -o digonto.in.config https://raw.githubusercontent.com/fanthomless/scripts/digonto.in.config
sudo nginx -s reload
# sudo service nginx restart

# https://raw.githubusercontent.com/fanthomless/scripts/main/nginx-setup.sh
# chmod u=rx nginx-setup.sh