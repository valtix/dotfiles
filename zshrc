# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Node Config:
export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tree-sitter-cli
export PATH=/home/valti/.cargo/bin:$PATH


# for WSL: it removes the highlighting of folders:
LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS

# please remove from laptop devices
export SPARK_HOME=/opt/spark 
export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin
 
# path for Lunar Vim 
export PATH=$HOME/.local/bin:$PATH


################################################################################################################
#####################################################    ANTIGEN     ###########################################
################################################################################################################
source $HOME/.dotfiles/antigen.zsh

# Use Oh-My-Zsh
antigen use oh-my-zsh

# Set theme
antigen theme agnoster

# Set plugins (plugins not part of Oh-My-Zsh can be installed using githubusername/repo)
antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle z-shell/F-Sy-H --branch=main
antigen bundle marlonrichert/zsh-autocomplete@main


if [[ "$OSTYPE" == "darwin"* ]]; then
    antigen bundle osx
fi

# Apply changes
antigen apply




################################################################################################################
#####################################################    ALIASES     ###########################################
################################################################################################################
source $HOME/.dotfiles/antigen.zsh
alias vim="nvim"
alias lt="exa --tree --level=2 -a --icons"
alias l="exa --tree --level=1 --icons"
alias la="exa --header --long --all"

alias lh="cd ~"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
