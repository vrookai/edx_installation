#! /bin/bash
# To update the director run this. 


# Install git, pip, and build libraries
sudo apt-get install git python-pip python-dev build-essential libssl-dev libffi-dev

# Install mysql client and dev packages
sudo apt-get install libmysqlclient-dev mysql-client

sudo pip install virtualenv virtualenvwrapper
mkdir ~/virtualenvs
echo "export WORKON_HOME=~/virtualenvs" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
echo "export PIP_VIRTUALENV_BASE=~/virtualenvs" >> ~/.bashrc
source ~/.bashrc

virtualenv edx-configuration
source ~/virtualenvs/edx-configuration/bin/activate

git clone https://github.com/nikhilkanta/configuration
cd configuration
sudo make requirements
