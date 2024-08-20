set -x

cp /usr/local/src/pixel.service /etc/systemd/system/
chmod 644 /etc/systemd/system/pixel.service

cp /usr/local/src/app.service /etc/systemd/system/
chmod 644 /etc/systemd/system/app.service

cp /usr/local/src/metar-v4.service /etc/systemd/system/
chmod 644 /etc/systemd/system/metar-v4.service

cp /usr/local/src/metar-display-v4.service /etc/systemd/system/
chmod 644 /etc/systemd/system/metar-display-v4.service

systemctl daemon-reload

systemctl start pixel.service
systemctl start app.service
systemctl start metar-v4.service
systemctl start metar-display-v4.service

systemctl enable pixel.service
systemctl enable app.service
systemctl enable metar-v4.service
systemctl enable metar-display-v4.service
