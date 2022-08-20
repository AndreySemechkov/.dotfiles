#!/bin/bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# install my brew software
brew bundle --file ~/.dotfiles/Brewfile
# install z shell
echo "$(which zsh)" | sudo tee -a /etc/shells
echo "Changing do zsh"
chsh -s $(which zsh)
# symlinking .dotfiles repo to sync with home
ln -sf ~/.dotfiles/.bashrc ~/.bashrc
ln -sf ~/.dotfiles/.zshrc  ~/.zshrc
ln -sf ~/.dotfiles/.myrc ~/.myrc 
ln -sf ~/.dotfiles/git/gitignore  ~/.gitignore
ln -sf ~/.dotfiles/git/gitconfig  ~/.gitconfig