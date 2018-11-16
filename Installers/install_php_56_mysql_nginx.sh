if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    exit 1
else
    echo "Adding ppa:ondrej/php"
    add-apt-repository ppa:ondrej/php -y
    
    echo "Adding repository nginx"
    echo deb http://nginx.org/packages/mainline/ubuntu/ `lsb_release --codename --short` nginx >> /etc -y
    
    echo "Updating.."
    apt-get update -y

    echo "Installing nginx php5.6 common, php5.6 cli, php5.6 fpm"
    apt-get install nginx php5.6-common php5.6-cli php5.6-fpm -y

    echo "Installing mysql to php5.6"
    apt-get install php5.6-mysql -y
fi
