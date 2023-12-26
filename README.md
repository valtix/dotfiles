# Order of installations (linux Version)

1. Install FISH
   - add repositories by following this link: https://launchpad.net/~fish-shell/+archive/ubuntu/release-3
   - set as default shell by: chsh -s /usr/bin/fish
   - log out/log back in of Operating System
   - run fish_config for changing themes/prompt options
2. Install Helix editor
   - Go to: https://docs.helix-editor.com/install.html
   - Remember: to use hx instead of vim when editing a file in the terminal!
3. Install EXA:
   - sudo apt install exa
4. Install python pip
   - sudo apt install python3-pip
5. Install Dotbot
   - pip3 install dotbot
   - add dotobot to path: set -U fish_user_paths $HOME/.local/bin $fish_user_paths
   - Go to your github page and copy the https link to the dotfiles repository
   - In your terminal, make sure you are in the home directory
   - Enter the following command in the terminal: git clone https://github.com/valtix/.dotfiles.git (or whatever the link happens to be)
   - cd into your new dotfiles folder
   - run the terminal command: dotbot -c install.conf.yaml

######### in progress #####################

3. Install Rust & Cargo
   - Go to: https://doc.rust-lang.org/cargo/getting-started/installation.html
   - Exit shell and log back in
   - Add to FISH path: set -U fish_user_paths $HOME/.cargo/env $fish_user_paths
   - Exit shell and log back in

6. Install antidote: https://github.com/mattmc3/antidote 
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
