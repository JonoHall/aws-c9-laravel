# aws-c9-laravel: PHP 7.1

Run this script to set up PHP 7.1 and install the Laravel Installer.

### Prerequisite

Setup a blank cloud9 workspace on AWS (this script is not for the legacy c9.io platform).
https://aws.amazon.com/cloud9/

### Usage

Run the following on a fresh cloud9 project.

``` bash
curl -L https://raw.githubusercontent.com/JonoHall/aws-c9-laravel/master/install.sh | bash
```

Set up your Laravel project.

``` bash
laravel new project-name
```