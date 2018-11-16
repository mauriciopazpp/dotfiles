if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    exit 1
else
    echo "Updating.."
    apt-get update -y

    echo "Installing last version of php"
    apt-get install php -y
fi
