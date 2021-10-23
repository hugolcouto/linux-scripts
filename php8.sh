#!/bin/bash

sudo apt-get install software-properties-comm &&
sudo add-apt-repository ppa:ondrej/php &&
sudo apt update
sudo apt install php8.0 php8.0-intl php8.0-mysql php8.0-sqlite3 php8.0-gd php8.0-mbstring php8.0-xml php8.0-simplexml php8.0-dom php8.0-curl php8.0-zip
