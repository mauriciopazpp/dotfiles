source antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle soimort/translate-shell
antigen bundle zsh-users/zsh-syntax-highlighting

if [ $(dpkg-query -W -f='${Status}' fonts-powerline 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt-get install fonts-powerline
fi

antigen theme agnoster

antigen apply

SAVEHIST=100
HISTFILE=~/.zsh_history

