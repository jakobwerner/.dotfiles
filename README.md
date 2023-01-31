# Dotfiles

## Installation
Assuming the repository sits at `~/.dotfiles/`:
```
mkdir -p ~/.bashrc.d
ln -sf ~/.dotfiles/bash/config.sh ~/.bashrc.d/config.sh
mkdir -p ~/.var/app/com.raggesilver.BlackBox
ln -sh ~/.dotfiles/blackbox/data ~/.var/app/com.raggesilver.BlackBox/data
```
