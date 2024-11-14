#!/bin/bash
xcode-select --install
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
git clone git@github.com:AndreySemechkov/.dotfiles.git ~/.dotfiles
# install my brew software, refresh Brewfile periodically using > brew bundle dump
brew bundle --file ~/.dotfiles/mac/Brewfile
# install z shell
echo "$(which zsh)" | sudo tee -a /etc/shells
echo "Changing do zsh"
chsh -s $(which zsh)
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
