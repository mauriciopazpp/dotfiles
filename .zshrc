source antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle soimort/translate-shell
antigen bundle zsh-users/zsh-syntax-highlighting

sudo apt-get install fonts-powerline
antigen theme agnoster

antigen apply

echo "Antigen done!"

DEFAULT_USER=$USER
prompt_context(){}

;;
