#!/bin/bash

# Update
sudo yum -y update

# Install PHP 7.1
sudo yum install -y php71 
sudo yum install -y php71-devel 
sudo yum install -y php71-mysql 
sudo yum install -y php71-mysqlnd
sudo yum install -y php71-pdo 
sudo yum install -y php71-mbstring 
sudo yum install -y php71-mcrypt
sudo ln -sf /etc/httpd/conf.d/php-conf.7.1 /etc/alternatives/php.conf
sudo ln -sf /etc/httpd/conf.modules.d/15-php-conf.7.1 /etc/alternatives/10-php.conf

# Set default PHP version to 7.1
sudo update-alternatives --set php /usr/bin/php-7.1

# Update npm
npm install -g npm

# Update node.js
nvm install --lts

# Install composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
echo 'PATH=$PATH:$HOME/.composer/vendor/bin' >> ~/.bash_profile

# Install Laravel
composer global require "laravel/installer"