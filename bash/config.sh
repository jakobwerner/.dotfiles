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

# if [[ $HOSTNAME == "distrobox.fedora" ]]; then
#     PS1="\[\[\e[01;31m\]\h\[\033[00m\]:\[\e[01;34m\]\w\[\e[00m\]\$ "
# fi

# conda default environment
# conda activate default
