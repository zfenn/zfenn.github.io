# Lines configured by zsh-newuser-install
HISTFILE=~/.local/share/histfile
HISTSIZE=10000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v

zstyle :compinstall filename '/home/zfen/.zshrc'

autoload -Uz compinit
compinit

export TERM=st
# ~/.zshrc

# Git prompt
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
# This line obtains information from the vcs.
zstyle ':vcs_info:git*' formats "- (%b) "
precmd() {
    vcs_info
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for the prompt. PS1 synonym.
prompt='%2/ ${vcs_info_msg_0_}> '

source ~/.zsh/zsh-dircolors-solarized/zsh-dircolors-solarized.zsh

alias pac="sudo pacman" 
alias pacs="sudo pacman -S archlinux-keyring && sudo pacman -S"
alias pac-update="sudo pacman -S archlinux-keyring && sudo pacman -Syu"

alias e="exit"
alias vi="nvim"
alias vim="nvim"
alias v="nvim"

alias ekbd="cd /usr/share/kbd/keymaps"

# enable color support of ls and also add handy aliases
  if [ -x /usr/bin/dircolors ]; then
      test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
      alias ls='ls --color=auto'
      alias ll='ls -la --color=always'
      alias dir='dir --color=always'
      alias vdir='vdir --color=always'
      alias grep='grep --color=always'
      alias fgrep='fgrep --color=always'
      alias egrep='egrep --color=always'
		  alias less='less -R'	

  fi


