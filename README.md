# Dependencies

-   [Alacritty](https://alacritty.org/): Terminal for Linux, MacOS and Windows.
-   [Neovim](https://neovim.io/): New version of Vim
-   [ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH): Shell
-   [Dotbot](https://github.com/anishathalye/dotbot): Use pip3 install dotbot.
-   [Oh-My-Zsh](https://ohmyz.sh/): Framework for managing Zsh.

# Order of installations

1. Install zsh
2. Install oh-my-zsh (it will automatically create a .zshrc file)
3. Install dotbot (you might have to install python dependencies; follow installation instructions)
4. Delete the .zshrc file and associated back up zshrc files
5. git clone this repo in your home directory (i.e., $HOME/.dotfiles)
6. run dotbot -c install.conf.yaml
7. Done!!
