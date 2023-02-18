# Fedora Silverblue Configuration

These are instructions on how I set up a fresh Fedora Silverblue installation.

## Add Flathub Repository

```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-modify --enable flathub
```

## Uninstall Some Flatpak Applications
```
flatpak uninstall org.fedoraproject.MediaWriter org.gnome.Connections org.gnome.eog org.gnome.Evince org.gnome.Extensions org.gnome.font-viewer org.gnome.Logs org.gnome.Weather 
```

## Install Some Flatpak Applications
```
flatpak install flathub com.raggesilver.BlackBox org.mozilla.firefox org.gnome.Evince org.gtk.Gtk3theme.adw-gtk3 org.gtk.Gtk3theme.adw-gtk3-dark com.mattjakeman.ExtensionManager
```

## Uninstall Some Base Packages
```
rpm-ostree override remove firefox-langpacks firefox
```

## Install Some Layered Packages
```
rpm-ostree install distrobox gnome-shell-extension-caffeine gnome-shell-extension-just-perfection gnome-shell-extension-blur-my-shell fira-code-fonts
```

## Reboot
Reboot to complete installation of layered packages

## Setup Firefox Profile with Arkenfox Configuration
Open firefox profile manager:
```
flatpak run org.mozilla.firefox -p
```
Use the GUI to create a profile named `hardened` at `~/.var/app/org.mozilla.firefox/.mozilla/firefox/hardened` and exit profile manager.

Download updater for arkenfox configuration:
```
wget https://raw.githubusercontent.com/arkenfox/user.js/master/updater.sh -P ~/.var/app/org.mozilla.firefox/.mozilla/firefox/hardened
```

Install arkenfox configuration:
```
sh ~/.var/app/org.mozilla.firefox/.mozilla/firefox/hardened/updater.sh
```

Open firefox profile manager:
```
flatpak run org.mozilla.firefox -p
```
Start firefox with the `hardened` profile and select `Use the selected profile without asking at startup`.
Install Browser Extensions:
1. uBlock Origin
2. Bitwarden

## Setup SSH Connection to GitHub

See [here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) for more information.

Generate ssh key:
```
ssh-keygen -t ed25519 -C "your_email@example.com"
```
save the key in the default location
tye a secure password

Start the ssh-agent in the background:
```
eval "$(ssh-agent -s)"
```

Add private key to the ssh-agent:
```
ssh-add ~/.ssh/id_ed25519
```
Go to github.com to add the public key to the profile

## Clone Dotfiles Repository
```
git clone git@github.com:jakobwerner/.dotfiles.git
```

## Create distrobox
Create a Fedora distrobox:
```
distrobox create --image fedora:latest --name distrobox
distrobox enter distrobox
```
Install DNF configuration:
```
sudo ln -sf ~/.dotfiles/dnf/dnf.conf /etc/dnf/dnf.conf
```
Install some basic packages:
```
sudo dnf install bash-completion nnn trash-cli wl-clipboard neovim openssh git
```

## Install Bash Configuration
```
mkdir -p ~/.bashrc.d
ln -sf ~/.dotfiles/bash/config.sh ~/.bashrc.d/config.sh
source ~/.bashrc
```

## Install Firefox Configuration
```
ln -sf ~/.dotfiles/firefox/user-overrides.js ~/.var/app/org.mozilla.firefox/.mozilla/firefox/hardened/user-overrides.js
sh ~/.var/app/org.mozilla.firefox/.mozilla/firefox/hardened/updater.sh
```

## Install BlackBox Configuration
Install Color Schemes:
```
mkdir -p ~/.var/app/com.raggesilver.BlackBox/data/blackbox/schemes
git clone https://github.com/annappropriate/rose-pine-tilix ~/.var/app/com.raggesilver.BlackBox/data/blackbox/schemes/rose-pine-tilix
ln -sf ~/.var/app/com.raggesilver.BlackBox/data/blackbox/schemes/rose-pine-tilix/rose-pine.json ~/.var/app/com.raggesilver.BlackBox/data/blackbox/schemes/rose-pine.json
ln -sf ~/.var/app/com.raggesilver.BlackBox/data/blackbox/schemes/rose-pine-tilix/rose-pine-moon.json ~/.var/app/com.raggesilver.BlackBox/data/blackbox/schemes/rose-pine-moon.json
ln -sf ~/.var/app/com.raggesilver.BlackBox/data/blackbox/schemes/rose-pine-tilix/rose-pine-dawn.json ~/.var/app/com.raggesilver.BlackBox/data/blackbox/schemes/rose-pine-dawn.json
```

Install Configuation
```
mkdir -p ~/.var/app/com.raggesilver.BlackBox/config/glib-2.0/settings
ln -sf ~/.dotfiles/blackbox/keyfile ~/.var/app/com.raggesilver.BlackBox/config/glib-2.0/settings/keyfile
```

## Install GNOME Configuration
Open Extension Manager to install the `Awesome Tiles` Extension.
Install GNOME Configruation:
```
dconf load / < ~/.dotfiles/gnome/dconf-settings.ini
```

## Install Conda
Install conda:
```
sudo dnf install conda
```
Install default environment:
```
conda create --name default
```
Add `conda-forge` channel:
```
conda config --add channels conda-forge
```
Install `python-lsp-server`:
```
conda install python-lsp-server
```

## Install lua-language-server
```
mkdir -p ~/.local/bin/LuaLS
```
Download latest binary from [here](https://github.com/LuaLS/lua-language-server/releases) to `~/.local/share/LuaLS`.
```
tar -xf ~/.local/bin/LuaLS/lua-language-server-3.6.11-linux-x64.tar.gz
```
Create a wrapper script at `~/.local/bin/lua-language-server` with contents
```
#!/bin/bash
exec "~/.local/bin/LuaLS/bin/lua-language-server" "$@"
```

## Install Neovim Configuration
```
ln -sf ~/.dotfiles/nvim ~/.config/nvim
```
