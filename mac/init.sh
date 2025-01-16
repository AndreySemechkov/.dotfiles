#!/bin/bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
# install my brew software, refresh Brewfile periodically using > brew bundle dump
brew bundle --file ~/.dotfiles/mac/Brewfile
# install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cat ~/.dotfiles/.ssh-example >> ~/.ssh/config
cp -f ~/.dotfiles/.bashrc ~/.bashrc
cp -f ~/.dotfiles/.zshrc  ~/.zshrc
# symlinking .dotfiles repo to sync with home
ln -sf ~/.dotfiles/.bashrc ~/.bashrc
ln -sf ~/.dotfiles/.zshrc  ~/.zshrc
ln -sf ~/.dotfiles/git/gitignore  ~/.gitignore
ln -sf ~/.dotfiles/git/gitconfig  ~/.gitconfig
# turn on fzf history autocomplete
/opt/homebrew/opt/fzf/install
#install fabric ai
mkdir -p ~/code/third-party-cli
git clone git@github.com:danielmiessler/fabric.git ~/code/third-party-cli/fabric
curl -L https://github.com/danielmiessler/fabric/releases/latest/download/fabric-darwin-arm64 > /opt/homebrew/opt/fabric && chmod +x /opt/homebrew/opt/fabric && /opt/homebrew/opt/fabric --version
/opt/homebrew/opt/fabric --setup
# install  github copilot cli
gh auth login
gh extension install github/gh-copilot

