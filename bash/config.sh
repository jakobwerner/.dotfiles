# set vi keybindings
set -o vi

# environment variables
export EDITOR="nvim"
export VISUAL="nvim"

# Path
export PATH=$PATH:~/.cargo/bin/

# configuration options for nnn
export NNN_TRASH=1
alias nnn="nnn -R"

# aliases
alias ls="ls -A --group-directories-first -h -l -1 --color=auto"