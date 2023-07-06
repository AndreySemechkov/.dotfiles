## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```


2. Clone my repos

```zsh
# Clone my .dotfiles the setup repo
git clone git@github.com:AndreySemechkov/.dotfiles.git ~/.dotfiles
git clone https://github.com/dracula/iterm.git
```

3. Install software and create symlinks in the Home directory and setup .myrc.

```zsh
# Install homebrow if not installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# run my bootstrapping script
chmod +x ~/.dotfiles/init.sh
sudo bash ~/.dotfiles/init.sh
```

4. Setup iTerm2

Enable dracula theme on Iterm2:
    - iTerm2 > Preferences > Profiles > Colors Tab
    - Open the Color Presets... drop-down in the bottom right corner
    - Select Import... from the list
       Select the Dracula.itermcolors file
    - Select the Dracula from Color Presets...

Setup status bar with git and clock:
    Go to Preferences > Profiles > Session. Turn on Status bar enabled. Then click Configure Status Bar to begin setting up your status bar configuration.

4. Setup VS code insiders build using ./andrey-vs.code-profile

## TODO List
- Automate my symlinking script files with a bootstrapping tool like [Dotbot](https://github.com/anishathalye/dotbot)
- Learn how to use [`defaults`](https://macos-defaults.com/#%F0%9F%99%8B-what-s-a-defaults-command) to record and restore System Preferences and other macOS configurations
- Revisit the list in [`.zshrc`](.zshrc) to customize the shell.
- Make a checklist of steps to decommission your computer before wiping your hard drive.
- Learn from examples in other Dotfiles repositories at [dotfiles.github.io](https://dotfiles.github.io/).
)!
