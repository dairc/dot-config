# .bashrc (termux) android/fdroid

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# cd; ls -al
cd_ls() {
  cd "$@" || exit
  ls -al
}

# mkdir; cd
mkdir_cd() {
  mkdir -p "$1" && cd "$1" || exit
}

# copy last command to file
save_last_command() {
  # fc (fix command) -l (list) -n (do not prefix command numbers)
  # $1 = path to file to append output
  fc -ln -1 | sed '1s/^[[:space:]]*//' >> "${1}"
}

# extend globs / regexes
shopt -s extglob