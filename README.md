# Order of installations (linux Version)

1. Install FISH
   - LINUX:
      - add repositories by following this link: https://launchpad.net/~fish-shell/+archive/ubuntu/release-3
      - set as default shell by: ```chsh -s /usr/bin/fish```
      - log out/log back in of Operating System
   - Mac OS:
      - ```
        brew install fish
        sudo bash -c 'echo $(which fish) >> /etc/shells'
        chsh -s $(which fish)
        ```
   - Run fish_config for changing themes/prompt options
chsh -s $(which fish)
3. Install fisher:
    - https://github.com/jorgebucaran/fisher
4. Install bass with fisher (https://github.com/edc/bass):
   ```fisher install edc/bass```
5. Install nvm (https://github.com/nvm-sh/nvm#installation-and-update):
   - curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
6. Create a function file to hold the source command for nvm:
   - touch ~/.config/fish/functions/nvm.fish
   - add the following function in that newly created file:
     function nvm
        bass source ~/.config/nvm/nvm.sh --no-use ';' nvm $argv
     end
7. Install node.js and npm via nvm:
   - nvm install --lts
   - nvm alias default node
   - verify that it works by:
   - node --version
   - npm -- version
8. Install Helix editor
   - Go to: https://docs.helix-editor.com/install.html
   - Remember: to use hx instead of vim when editing a file in the terminal!
   - Install HTML language-server:npm i -g vscode-langservers-extracted (https://github.com/hrsh7th/vscode-langservers-extracted)
   - Install javascript language-server: npm install -g typescript-language-server typescript (https://github.com/typescript-language-server/typescript-language-server)  
9. Install EZA (https://the.exa.website/):
   - Linux: ```sudo apt install exa```
   - Mac OS: ```brew install eza```
10. Install python pip
   - sudo apt install python3-pip
11. Install Dotbot
    - pip3 install dotbot
    - add dotobot to path: set -U fish_user_paths $HOME/.local/bin $fish_user_paths
    - Go to your github page and copy the https link to the dotfiles repository
    - In your terminal, make sure you are in the home directory
    - Enter the following command in the terminal: git clone https://github.com/valtix/.dotfiles.git (or whatever the link happens to be)
    - cd into your new dotfiles folder
    - run the terminal command: dotbot -c install.conf.yaml
12. Install live-server:
    - npm install -g live-server
13. Install tmux:
    - Linux: ```sudo apt-get install tmux```
    - Mac OS: ```brew install tmux```
14. Install Rust & Cargo
    - Go to: https://doc.rust-lang.org/cargo/getting-started/installation.html
    - Exit shell and log back in
    - Linux: add to FISH path ```set -U fish_user_paths $HOME/.cargo/env $fish_user_paths```
    - Mac OS: add to FISH path ```set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths``` 
    - Exit shell and log back in
15. Install Hack Nerd Fonts (https://www.nerdfonts.com/font-downloads)
    - On windows unzip the file and highlight all fonts and right click -> install
    - On linux unzip -> double click -> and you should see an option to install. You might have to google it if this is not the case
16. Installing neovim
    - Go to https://github.com/neovim/neovim/blob/master/INSTALL.md
    - Follow the instructions under the AppImage ("universal" Linux package) section

######### in progress #####################



8. Install tree-sitter-cli: cargo install tree-sitter-cli

