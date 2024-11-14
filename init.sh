#!/bin/bash
xcode-select --install
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# install my brew software, refresh Brewfile periodically using > brew bundle dump
brew bundle --file ~/.dotfiles/mac/Brewfile
# install z shell
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
ln -sf ~/.dotfiles/mac/.myrc ~/.myrc 
ln -sf ~/.dotfiles/git/gitignore  ~/.gitignore
ln -sf ~/.dotfiles/git/gitconfig  ~/.gitconfig
