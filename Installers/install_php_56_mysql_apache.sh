if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    exit 1
else
    echo "Adding ppa:ondrej/php"
    add-apt-repository ppa:ondrej/php -y
    
    echo "Updating.."
    apt-get update -y

    echo "Installing apache php5.6 common, php5.6 cli, libapache2-mod-php5.6, mbstring..."
    apt-get install apache2 php5.6-common php5.6-cli php5.6 libapache2-mod-php5.6 php5.6-mbstring php-xml -y
    
    echo "Installing mysql to php5.6"
    apt-get install php5.6-mysql -y
fi
