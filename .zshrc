source antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle soimort/translate-shell
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle marzocchi/zsh-notify
antigen bundle buonomo/yarn-completion

if [ $(dpkg-query -W -f='${Status}' fonts-powerline 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt-get install fonts-powerline
fi

#if [ ! $(dpkg-query -W -f='${Status}' undistract-me 2>/dev/null | grep -c "ok installed") -eq 0 ];
#then
#	. /usr/share/undistract-me/long-running.bash
#	notify_when_long_running_commands_finish_install
#fi


antigen theme clean
antigen theme agnoster

antigen apply

if [ -f ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
	source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

## Zsh history params
SAVEHIST=100000
HISTFILE=~/.zsh_history
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell

setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match

zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion

DEFAULT_USER=$USER
