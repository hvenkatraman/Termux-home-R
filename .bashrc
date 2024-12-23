#Aliases are shortcuts for long commands. For example:

alias ll='ls -l'
alias gs='git status'
alias rm='rm -i'  # Always prompt before deleting a file

#You can set environment variables to configure paths, language settings, etc.:

export PATH=$PATH:/data/data/com.termux/files/usr/local/bin
export EDITOR=vim
export LANG=en_US.UTF-8


# Custom prompt (shows username, hostname, and current directory)
export PS1="\u@\h:\w\$ "


#You can add color to your prompt like this:

#export PS1="\033[01;32m\u@\h \033[01;34m\w\033[00m \$ "

#You can define custom functions in your .bashrc:

# Function to search for a command in history
search_history() {
    history | grep "$1"
}

# Function to make a directory and navigate into it
mkcd() {
    mkdir -p "$1" && cd "$1"
}

#You can enable or disable certain shell features using shopt or set:
shopt -s histappend     # Append to history rather than overwriting
#shopt -s autocd         # Automatically cd when typing a directory name
#set -o vi               # Use vi key bindings


#You can source other scripts from .bashrc to keep things organized:

# Load custom scripts
if [ -f ~/.my_custom_script.sh ]; then
    source ~/.my_custom_script.sh
fi

#Set terminal-specific settings like color support or clearing the screen:

# Enable colors for `ls` and other commands
alias ls='ls --color=auto'

#Configure how Bash handles command history:

# Increase the size of history
export HISTSIZE=10000
export HISTFILESIZE=10000

