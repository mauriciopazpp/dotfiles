## System aliases
alias update='sudo -- sh -c "apt update && apt upgrade"'
alias grep='grep --color=auto'

#Util
alias create-password='alias getpass="openssl rand -base64 20"' #Create a password with 20 characters
alias ping='ping -c 5' #Limit that to just five pings
alias internet-speed='speedtest-cli --server 2406 --simple' #Needs sudo apt install speedtest-cli
alias my-local-ip='ipconfig getifaddr en0'
alias my-external-ip='curl ipinfo.io/ip' #Returns your external IP address
