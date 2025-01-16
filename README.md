## Steps to bootstrap a new Mac

 Install software and create symlinks in the Home directory and setup .myrc.

```zsh
# On MacOS installs basic utils such as git, on linux skip this line
xcode-select --install
# manually add my github ssh key to .ssh
mkdir -p ~/.ssh
echo -e "Host github.com\n    HostName github.com\n    IdentityFile ~/.ssh/personal_github\n    IdentitiesOnly yes" > ~/.ssh/config
vi ~/.ssh/personal_github
chmod 600 ~/.ssh/personal_github
# Clone my .dotfiles the setup repo
git clone git@github.com:AndreySemechkov/.dotfiles.git ~/.dotfiles
# run my bootstrapping install script
chmod +x ~/.dotfiles/mac/init.sh
bash ~/.dotfiles/mac/init.sh
```

## TODO List
- unify init scripts by identifying if its macOS or linux
- Automate my symlinking script files with a bootstrapping tool like [Dotbot](https://github.com/anishathalye/dotbot)
- Learn how to use [`defaults`](https://macos-defaults.com/#%F0%9F%99%8B-what-s-a-defaults-command) to record and restore System Preferences and other macOS configurations
- Revisit the list in [`.zshrc`](.zshrc) to customize the shell.
- Learn from examples in other Dotfiles repositories at [dotfiles.github.io](https://dotfiles.github.io/).
)!
