#requires python


#setup certbot
sudo apt install -y certbot python3-certbot-nginx
sudo certbot --nginx -d digonto.in -d www.digonto.in
#sudo systemctl status certbot.timer
#sudo certbot renew --dry-run