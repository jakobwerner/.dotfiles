# Dotfiles

## Installation

Assuming the repository sits at `~/.dotfiles/`:

### Installation of bash Configuration
```
mkdir -p ~/.bashrc.d
ln -sf ~/.dotfiles/bash/config.sh ~/.bashrc.d/config.sh
```
The `.bashrc` file should contain the following lines:
```
# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc
```

### Installation of BlackBox Color Schemes
```
mkdir -p ~/.var/app/com.raggesilver.BlackBox
ln -sf ~/.dotfiles/blackbox/data ~/.var/app/com.raggesilver.BlackBox
```

### Installation of hardened firefox profile:
Create profile named `hardened` at `~/.var/app/org.mozilla.firefox/.mozilla/firefox/hardened`.
```
ln -sf ~/.dotfiles/firefox/user-overrides.js ~/.var/app/org.mozilla.firefox/.mozilla/firefox/hardened/user-overrides.js
```
Download the `updater.sh` script from the arkenfox project to `~/.var/app/org.mozilla.firefox/.mozilla/firefox/hardened/updater.sh` and run it from there.
