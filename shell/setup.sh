# Make sure you run this as sudo
apt update -y
apt upgrade -y
apt install -y emacs-nox
apt install -y git
apt install -y python3-pip python3-venv
apt install -y uwsgi uwsgi-plugin-python3 nginx

pip3 install flask wget arrow logzero folium rpi_ws281x adafruit-circuitpython-neopixel
pip3 install --force-reinstall adafruit-blinka

curl  -L https://raw.githubusercontent.com/nksan/Rpi-SetWiFi-viaBluetooth/main/btwifisetInstall.sh | bash

git clone git@github.com:PilotMap/livesectional.git
cd ../etc/system
install.sh
