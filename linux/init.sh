#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
alias brew=/home/linuxbrew/.linuxbrew/bin/brew
brew update
# install my brew software, refresh Brewfile periodically using > brew bundle dump
brew bundle --file ~/.dotfiles/mac/Brewfile
# install zsh
echo "$(which zsh)" | sudo tee -a /etc/shells
echo "Changing default to zsh"
chsh -s $(which zsh)
# install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# turn on fzf history autocomplete
/opt/homebrew/opt/fzf/install
#config ssh
mkdir ~/.ssh
cp ~/.dotfiles/.ssh-example ~/.ssh/myconfig
# symlinking .dotfiles repo to sync with home
ln -sf ~/.dotfiles/.bashrc ~/.bashrc
ln -sf ~/.dotfiles/.zshrc  ~/.zshrc
ln -sf ~/.dotfiles/git/gitignore  ~/.gitignore
ln -sf ~/.dotfiles/git/gitconfig  ~/.gitconfig
# store nix store on HOME mount instead of root
sudo rm -rf /nix
sudo mkdir ~/nix
sudo chown $USER: ~/ni;
sudo chmod go+rx ~/nix
ls -ld ~/nix
sudo mkdir /nix
sudo mount -o bind ~/nix /nix
#install nix package manager
sh <(curl -L https://nixos.org/nix/install) --no-daemon
mkdir -p ~/.config/ghostty
cp ~/.dotfiles/linux/flake.nix ~/.config/ghostty/flake.nix
# install ghostty nix flake
nix profile install "~/.config/ghostty" --extra-experimental-features nix-command --extra-experimental-features flakes