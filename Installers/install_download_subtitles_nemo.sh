if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    exit 1
else
    echo "Adding ppa:ondrej/php"
    add-apt-repository ppa:webupd8team/subtitle-utils -y
    
    echo "Updating.."
    apt-get update -y
    
    echo "Installing periscope"
    apt-get install python-periscope -y
    
    echo "Installing periscope nemo"
    apt-get install periscope-nemo -y

    echo "Refreshing nemo"
    nemo -q

fi
