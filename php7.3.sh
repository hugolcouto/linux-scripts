#!/bin/bash

sudo add-apt-repository ppa:ondrej/php;
sudo apt-get update;
sudo apt-get install php7.3;
sudo apt install php7.3 php7.3-intl php7.3-mysql php7.3-sqlite3 \
	php7.3-gd php7.3-mbstring php7.3-xml php7.3-simplexml php7.3-dom \
	php7.3-curl php7.3-zip