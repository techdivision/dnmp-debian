## PHP Xdebug 
php Xdebug is disabled by default. You can use the following environment variables to setup Xdebug.

- **XDEBUG_ENABLE** (true|false)
- **XDEBUG_REMOTE_AUTOSTART** (true|false)
- **XDEBUG_REMOTE_HOST**
- **XDEBUG_REMOTE_PORT** (php default: 9000)

### General usage with a new container 

- Enable Xdebug: `docker exec -it <name> setup_xdebug -r -e -a -h=<ip-address> -p=9000`
- Disable Xdebug: `docker exec -it <name> setup_xdebug -r -d`
- To see all parameters run `docker exec -it <name> setup_xdebug --help`

### Setting up with PHPStorm

- Find out ip address of local machine: `ifconfig|grep inet|grep 10|head -1`
- Insert container name as well as ip address: `docker exec -it <name> setup_xdebug -r -e -a -h=<ip-address> -p=9000`
- Set up PHPStorm like the following and be sure to use the correct server name `Magento 2 Docker` (you can use whatever server name you want, but remember it, we need it in the next step)

![alt text](phpstorm-xdebug-settings.png "Xdebug PHPStorm Settings")

- `docker exec -ti <name> sh`
- Fill in the server name here from the step above: `echo 'env[PHP_IDE_CONFIG]="serverName=Magento 2 Docker"' >> /etc/php/7.0/fpm/php-fpm.conf`
- Save the file and run `supervisorctl restart php7-fpm`
