# !/bin/bash

echo Este arquivo serve para instalação de todos os scripts essenciais que uso no Linux

# Update
sudo apt-get update;
sutdo apt-get upgrade;

# Curl
sudo apt-get install curl;

# Node 16
sudo apt-get install curl;
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -;
sudo apt-get install nodejs;

# PHP 8.x
sudo apt-get install software-properties-comm;
sudo add-apt-repository ppa:ondrej/php;
sudo apt update;
sudo apt install php8.0 php8.0-intl php8.0-mysql php8.0-sqlite3 \
	php8.0-gd php8.0-mbstring php8.0-xml php8.0-simplexml php8.0-dom \
	php8.0-curl php8.0-zip;
sudo update-rc.d apache2 disable;

# Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');";
php -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;";
php composer-setup.php;
php -r "unlink('composer-setup.php');";
sudo mv composer.phar /usr/local/bin/composer;

# Docker
sudo apt-get remove docker docker-engine docker.io containerd runc;
sudo apt-get update;

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release;

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg;

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;

 sudo apt-get update;

 sudo apt-get install docker-ce docker-ce-cli containerd.io;
 sudo docker run hello-world;
~;

# ZSH
sudo apt-get install zsh;
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
