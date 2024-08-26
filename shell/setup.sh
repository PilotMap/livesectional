# Make sure you run this as sudo
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y git emacs-nox
sudo apt install -y python3-pip python3-venv uwsgi uwsgi-plugin-python3 nginx python3-numpy libopenjp2-7
sudo curl  -L https://raw.githubusercontent.com/nksan/Rpi-SetWiFi-viaBluetooth/main/btwifisetInstall.sh | bash

python3 -m venv livesectional
cd livesectional
. bin/activate

git clone https://github.com/PilotMap/livesectional.git
cd livesectional
git checkout cleanup
pip3 install -r requirements.txt
chmod +x /home/pi/livesectional/livesectional/etc/install.sh
/home/pi/livesectional/livesectional/etc/install.sh
