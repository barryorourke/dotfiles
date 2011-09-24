# .zshrc 
# Barry O'Rourke <barry@orodor.org.uk>
# 15/08/11

# set my locatiom for later use #

[ "$(hostname)" = "weiss" ] &&
  export LOCATION="home" ||
  export LOCATION="work"

# zsh builtin stuff #

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep

zstyle :compinstall filename '~/.zshrc'

bindkey -e
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "^H" backward-delete-word
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey '^i' expand-or-complete-prefix

autoload -Uz compinit
compinit

# lazy ssh host auto completion #

knownhosts=( ${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[0-9]*}%%\ *}%%,*} )
zstyle ':completion:*:(ssh|scp|sftp):*' hosts $knownhosts

# aliases #

alias vi='vim'
alias df='df -h'
alias du='du -h'
alias rm='rm -iv'
alias pine='alpine'

alias ng='ypcat -k netgroup | grep'
alias nu='ypcat -k passwd | grep'

alias -s txt=vim

alias -g ...='../..'
alias -g ....='../../..'

alias ls='ls -l --color=auto -F'

alias la='ls -la --color=auto -F --group-directories-first'

# enviromental variables #

export EDITOR=vim
export SVN_EDITOR=vim

[ "${LOCATION}" = "work" ] &&
 export BROWSER=google-chrome; export TERM=xterm-color ||
 export BROWSER=chromium

export PROMPT='[%n@%m %c]%# '

# handy functions #

extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz) tar xzf $1 ;;
      *.bz2) bunzip2 $1 ;;
      *.rar) unrar e $1 ;;
      *.gz) gunzip $1 ;;
      *.tar) tar xf $1 ;;
      *.tbz2) tar xjf $1 ;;
      *.tgz) tar xzf $1 ;;
      *.zip) unzip $1 ;;
      *.Z) uncompress $1 ;;
      *.7z) 7z x $1 ;;
      *) echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
