# ubuntu setup
adduser ian;
usermod -aG sudo ian;
rsync --archive --chown=ian:ian ~/.ssh /home/ian;

# nginx
sudo apt update -y;
sudo apt install -y nginx;

# firewall
sudo ufw allow OpenSSH;
sudo ufw enable -y;
sudo ufw allow 'Nginx HTTP';
sudo ufw allow 5000;

# install python essentials
sudo apt-get update;
sudo apt-get -y upgrade;
sudo apt-get install -y python3-pip python3-venv build-essential libssl-dev libffi-dev python-dev;

# new metrics for droplets
sudo apt-get -y purge do-agent;
curl -sSL https://repos.insights.digitalocean.com/install.sh | sudo bash;
sudo apt autoremove -y;

# set up git
git config --global user.email "ian.nicolasgomez@gmail.com";
git config --global user.name "Ian Gomez";

# set up project
python3 -m venv venv;
source venv/bin/activate;
pip install -r stable-req.txt;