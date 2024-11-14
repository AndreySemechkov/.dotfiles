## Steps to bootstrap a new Mac

 Install software and create symlinks in the Home directory and setup .myrc.

```zsh
# Clone my .dotfiles the setup repo
git clone git@github.com:AndreySemechkov/.dotfiles.git ~/.dotfiles
# run my bootstrapping install script
chmod +x ~/.dotfiles/init.sh
sudo bash ~/.dotfiles/init.sh
```

## TODO List
- Add my linux dotfiles and script
- Automate my symlinking script files with a bootstrapping tool like [Dotbot](https://github.com/anishathalye/dotbot)
- Learn how to use [`defaults`](https://macos-defaults.com/#%F0%9F%99%8B-what-s-a-defaults-command) to record and restore System Preferences and other macOS configurations
- Revisit the list in [`.zshrc`](.zshrc) to customize the shell.
- Make a checklist of steps to decommission your computer before wiping your hard drive.
- Learn from examples in other Dotfiles repositories at [dotfiles.github.io](https://dotfiles.github.io/).
)!
