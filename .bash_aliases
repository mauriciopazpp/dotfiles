## System aliases
alias update='sudo -- sh -c "apt update && apt upgrade"' #update and upgrade your OS
alias grep='grep --color=auto' #grep colorfull
alias rm='rm -iv' #Ask to remove and give a feedback
alias mv='mv --verbose' #Explains what is being done 
alias mount='mount |column -t' #Make mount command output pretty and human readable format
alias reboot='sudo /sbin/reboot' #Reboot your PC
alias poweroff='sudo /sbin/shutdown' #Terminates all process and shuts down the cpu
alias desligar='sudo /sbin/shutdown' #Terminates all process and shuts down the cpu

#Util
alias create-password='alias getpass="openssl rand -base64 20"' #Create a password with 20 characters
alias ping='ping -c 5' #Limit that to just five pings 
alias internet-speed='speedtest-cli --server 2406 --simple' #Needs sudo apt install speedtest-cli
alias my-external-ip='curl ipinfo.io/ip' #Returns your external IP address
alias path='echo -e ${PATH//:/\\n}' #Show all the paths configurated
alias ports='netstat -tulanp' #Show the ports used. Hint: use grep 80 to filter ports
alias meminfo='free -m -l -t'

##Developtment
#Apache
alias restart-apache='sudo service apache2 restart' #Restart apache
alias switch-php='sudo update-alternatives --config php && echo "\n\n" && php -v'
