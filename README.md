# Dependencies

- [Alacritty](https://alacritty.org/): Terminal for Linux, MacOS and Windows.
- [Neovim](https://neovim.io/): New version of Vim
- [ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH): Shell
- [Dotbot](https://github.com/anishathalye/dotbot): Use pip3 install dotbot.
- [NVM](https://github.com/nvm-sh/nvm#installing-and-updating): Node version manager to install Node.js and npm
- [Cargo](https://doc.rust-lang.org/cargo/getting-started/installation.html): Rust package manager
- [Tree-sitter CLI via cargo](https://crates.io/crates/tree-sitter-cli)

# Order of installations

1. Install ZSH
2. Install Neovim
3. Install Alacritty
4. Install Dotbot (you might have to install python dependencies; follow installation instructions)
5. git clone this repo in your home directory (i.e., $HOME/.dotfiles)
6. run dotbot -c install.conf.yaml
7. Done!!
