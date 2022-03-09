#requires python


#setup certbot
sudo apt install -y certbot python3-certbot-nginx
# sudo certbot --nginx -d digonto.in -d www.digonto.in
# sudo certbot --nginx -d digonto.in -d www.digonto.in--non-interactive --agree-tos -m webmaster@example.com
# redirect --> redirect http --> https
sudo certbot certonly --nginx --renew-by-default --redirect -n --domains digonto.in,www.digonto.in --agree-tos --email jahar2dey@gmail.com
sudo systemctl restart nginx
#sudo systemctl status certbot.timer
#sudo certbot renew --dry-run