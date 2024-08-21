# Make sure you run this as sudo
apt update -y
apt upgrade -y
apt install -y emacs-nox
apt install -y git
apt install -y python3-pip
apt install -y python3-venv
apt install -y python3-folium python3-flask

pip3 install --break-system-package rpi_ws281x adafruit-circuitpython-neopixel
pip3 install --force-reinstall adafruit-blinka

apt install -y uwsgi uwsgi-plugin-python3
apt install -y nginx

git clone git@github.com:PilotMap/livesectional.git
cd ../etc/system
install.sh
