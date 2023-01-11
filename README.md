# Order of installations (linux Version)

1. Install ZSH
   - sudo apt update
   - sudo apt-get install zsh
   - cat /etc/shells
   - copy the path for zsh (e.g., /bin/zsh)
   - change shells by chsh
   - enter the path (e.g., /bin/zsh)
2. Install python pip
   - sudo apt install python3-pip
3. Install Dotbot
   - pip3 install dotbot
   - delete the .zshrc file
   - add dotobot to path in the current session only (given that you cannot add it to the .zshrc file yet)
     by export command. Example -- export PATH="/home/valitx/.local/bin:$PATH"
4. Install exa via cargo
   - run: curl https://sh.rustup.rs -sSf | sh
   - Look at the following link for documentation: https://doc.rust-lang.org/cargo/getting-started/installation.html
   - cargo install exa
5. Install tree-sitter-cli: cargo install tree-sitter-cli
6. Install node: https://github.com/nodesource/distributions/blob/master/README.md
   - curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
   - sudo apt-get install -y nodejs
7. Install zip and unzip
   - sudo apt-get install zip unzip -y
8. Windows WLS ONLY-- add file permissions between Linux and Windows in your ~/.profile file
   -- # Note: Bash on Windows does not currently apply umask properly.
   -- if [["$(umask)" = "0000"]]; then
   -- umask 0022 # this line should be indented with 2 spaces
   -- fi
9. Git clone .dotfiles from github
   - make sure you are in home directory
   - git clone https://github.com/valtix/.dotfiles.git
   - cd .dotfiles
   - dotbot -c install.conf.yaml
10. Install Neovim
    - you will need to download the appimage and proceed from there.
    - lood at: https://github.com/neovim/neovim/wiki/Installing-Neovim
    - make sure you use the ./nvim.appimage --appimage-extract process instead
