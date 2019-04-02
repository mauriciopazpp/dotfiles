export ZSH="/home/mauriciopazp/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)
source $ZSH/oh-my-zsh.sh
DEFAULT_USER=$USER
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
if [ $(dpkg-query -W -f='${Status}' fonts-powerline 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt-get install fonts-powerline
fi
if [ ! -f ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ];
then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
fi
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

