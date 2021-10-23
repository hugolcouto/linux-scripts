#!/bin/bash

sudo add-apt-repository ppa:ondrej/php &&
sudo apt-get update &&
sudo apt-get install php7.3 &&
sudo apt-get install php7.3-mbstring php7.3-xml php7.3-simplexml php7.3-dom 