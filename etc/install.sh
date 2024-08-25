set -x

cp nginx/app.conf /etc/nginx/sites-available
ln /etc/nginx/sites-available/app.conf /etc/nginx/sites-enabled/
rm /etc/nginx/sites-available/default
rm /etc/nginx//sites-enabled/default

cp system/app.service /etc/systemd/system/
chmod 644 /etc/systemd/system/app.service

cp system/metar-v4.service /etc/systemd/system/
chmod 644 /etc/systemd/system/metar-v4.service

cp system/metar-display-v4.service /etc/systemd/system/
chmod 644 /etc/systemd/system/metar-display-v4.service

systemctl daemon-reload

systemctl start app.service
systemctl start metar-v4.service
systemctl start metar-display-v4.service

systemctl enable pixel.service
systemctl enable app.service
systemctl enable metar-v4.service
systemctl enable metar-display-v4.service

systemctl restart nginx
