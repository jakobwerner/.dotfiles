# Dotfiles

## Installation

Assuming the repository sits at `~/.dotfiles/`:

### Installation of bash Configuration
```
mkdir -p ~/.bashrc.d
ln -sf ~/.dotfiles/bash/config.sh ~/.bashrc.d/config.sh
```

### Installation of BlackBox Color Schemes
```
mkdir -p ~/.var/app/com.raggesilver.BlackBox
ln -sh ~/.dotfiles/blackbox/data ~/.var/app/com.raggesilver.BlackBox/data
```

### Installation of hardened firefox profile:
Create profile named `hardened` at `~/.var/app/org.mozilla.firefox/.mozilla/firefox/hardened`.
```
ln -sh ~/.dotfiles/firefox/user-overrides.js ~/.var/app/org.mozilla.firefox/.mozilla/firefox/hardened/user-overrides.js
```
Download the `updater.sh` script from the arkenfox project to `~/.var/app/org.mozilla.firefox/.mozilla/firefox/hardened/updater.sh` and run it from there.
