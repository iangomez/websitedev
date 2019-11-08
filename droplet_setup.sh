# ubuntu setup
adduser ian;
usermod -aG sudo ian;
rsync --archive --chown=ian:ian ~/.ssh /home/ian;

# firewall
ufw allow OpenSSH;
ufw enable -y;

# nginx
sudo apt update
sudo apt install nginx
sudo ufw allow 'Nginx HTTP'

# install python essentials
sudo apt-get update;
sudo apt-get -y upgrade;
sudo apt-get install -y python3-pip python3-venv build-essential libssl-dev libffi-dev python-dev;
pip3 install gunicorn flask;

# new metrics for droplets
sudo apt-get purge do-agent;
curl -sSL https://repos.insights.digitalocean.com/install.sh | sudo bash;

# set up git
git config --global user.email "ian.nicolasgomez@gmail.com"
git config --global user.name "Ian Gomez"
git clone https://github.com/iangomez/websitedev.git;

# set up project
cd websitedev
python3 -m venv venv
source venv/bin/activate
pip install wheel
pip install uwsgi flask
sudo ufw allow 5000