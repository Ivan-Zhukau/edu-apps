sudo apt update
sudo apt install apache2
git clone https://github.com/Ivan-Zhukau/edu-apps.git
cd edu-apps/
git checkout static-web-site
cd static-web-site/bin
sudo cp -r ../site/ /var/www/html/
sudo cp site.conf /etc/apache2/sites-available/
sudo apachectl configtest
sudo service apache2 reload
sudo service apache2 restart
