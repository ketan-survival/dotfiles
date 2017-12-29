# My dotfiles

This repo contains my dotfiles.

### Requirements:

- git
- gpg2
- curl
- vim

### Install instructions

1. Clone this repo to ~/.dotfiles `git clone https://github.com/spidey1/dotfiles.git ~/.dotfiles`
2. Add execute permissions to the install script - `chmod +x ~/.dotfiles/install.sh`
3. Run install script `. ~/.dotfiles/install.sh`

*Note* Ignore the error `E185: Cannot find colour scheme 'sol'`. This is happening because the vim color schemes havent been installed yet, just press ENTER to continue.

### Post install

- If vim plugins didn't install then install them manually by opening vim and running `PluginInstall`
- Update the name and email in `.gitconfig`

### Uninstall

Run the unintall command with `. ~/.dotfiles/uninstall.sh`. Ensure it has execute permissions.

*Note* This will potentially leave some debris. I purposely did not delete `~/.bash` and `~/vim` as there could be other files in there. Execute `rm rf ~/.bashrc; rm -rf ~/.vim` to remove them and their contents.

