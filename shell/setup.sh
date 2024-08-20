# Make sure you run this as sudo
apt update -y
apt upgrade -y
apt install -y emacs-nox
apt install -y git
apt install -y python3-pip
apt install -y python3-venv
apt install -y python3-folium python3-flask

apt install -y uwsgi
apt install -y nginx
git clone git@github.com:PilotMap/livesectional.git
