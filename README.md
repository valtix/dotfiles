# Order of installations (linux Version)

1. Install ZSH
   - sudo apt update
   - sudo apt upgrade
   - sudo apt install zsh
   - cat /etc/shells
   - "copy the path for zsh (e.g., /bin/zsh)"
   - change shells by: chsh
   - enter the path (e.g., /bin/zsh)
   - log out/log back in of Operating System
2. Install python pip
   - sudo apt install python3-pip
3. Install Dotbot
   - pip3 install dotbot
   - delete the .zshrc file
   - add dotobot to path in the current session only (given that you cannot add it to the .zshrc file yet)
     by export command. It will give you the path in the comments after it's installed!
     Example -- export PATH="/home/valti/.local/bin:$PATH"
4. Git clone .dotfiles from github
   - make sure you are in home directory
   - git clone https://github.com/valtix/.dotfiles.git
   - cd .dotfiles
   - dotbot -c install.conf.yaml
   - make sure you add the dotbot path to the zshrc file!
6. Install antidote: https://github.com/mattmc3/antidote 
7. Install exa via cargo
   - run: curl https://sh.rustup.rs -sSf | sh
   - Look at the following link for documentation: https://doc.rust-lang.org/cargo/getting-started/installation.html
   - Exit shell and log back in
   - cargo install exa
8. Install tree-sitter-cli: cargo install tree-sitter-cli
9. Install node.js and npm via nvm (https://github.com/nvm-sh/nvm#installation-and-update):
   - curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
   - exit shell
   - verify that it worked by: nvm --version
   - nvm install --lts
   - nvm alias default node
   - verify that it works by:
   - node --version
   - npm -- version
10. Install Neovim
   - you will need to download the appimage and proceed from there.
   - look at: https://github.com/neovim/neovim/wiki/Installing-Neovim
   - scroll down to the Linux section and run the curl command to donwloand the appimage
   - make sure you use the ./nvim.appimage --appimage-extract process instead
11. Install Hack Nerd Fonts (https://www.nerdfonts.com/font-downloads)
    - On windows unzip the file and highlight all fonts and right click -> install
    - On linux unzip -> double click -> and you should see an option to install. You might have to google it if this is not the case
12. Install live-server:
    - npm install -g live-server
13. Install Alacritty (Linux Version):
    - sudo apt install alacritty
14. Settings for alacritty window position based on screen size:
    Laptop:

```
window:
  # Window dimensions (changes require restart)
  #
  # Number of lines/columns (not pixels) in the terminal. The number of columns
  # must be at least `2`, while using a value of `0` for columns and lines will
  # fall back to the window manager's recommended size.
  dimensions:
    columns: 105
    lines: 40

  # Window position (changes require restart)
  #
  # Specified in number of pixels.
  # If the position is not set, the window manager will handle the placement.
  position:
    x: 480
    y: 40
```

15. Install tmux:
    - sudo apt-get install tmux
