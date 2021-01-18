  GNU nano 4.8                                 linux-setup.sh                                            
#!/bin/bash

# Setup for new Ubuntu 20.04 instances. ^_^
# Different versions may require different MongoDB setups

# Visual Studio Code
echo Setting up Visual Studio code
sudo snap install --classic code
# Install extensions
# Use `code --list-extensions | xargs -L 1 echo code --install-extension` to add new extensions
code --install-extension HookyQR.beautify
code --install-extension ms-python.python
code --install-extension ms-toolsai.jupyter
code --install-extension Shan.code-settings-sync


# MongoDB
# https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/
echo Setting up MongoDB
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | s>
sudo apt-get update
sudo apt-get install -y mongodb-org
# Optional. Ensure MongoDB starts following a system reboot
sudo systemctl enable mongod
# Test MongoDB succesfully installed:
# sudo systemctl start mongod && sudo systemctl status mongod && sudo systemctl stop mongod

# Git
echo setting up git
sudo apt install git
echo Enter your git name
read gitName
git config --global user.name $gitName
echo Enter your git Email
read gitEmail
git config --global user.email $gitEmail

# zsh
echo Setting up Zsh
sudo apt install zsh
# oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# workspace directory
echo Setting up Workspace
mkdir ./workspace

# Spotify
echo Setting up Spotify
snap install spotify

# Robo3T
echo Setting up Robo3T
snap install robo3t-snap

# Postman
snap install postman


