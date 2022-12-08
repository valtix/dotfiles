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



################################################################ User configs #########################################
# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Set name of the theme to load:
ZSH_THEME="jonathan"
ZSH_COLORIZE_STYLE="colorful"

# Uncomment the following line to use case-sensitive completion.
 CASE_SENSITIVE="true"


# Which plugins would you like to load?
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete colorize)


# Aliases (you have to refresh your terminal by either exiting out or running the following command: source ~/.zshrc)
alias vim="nvim"
alias lt="exa --tree --level=2 -a --icons"
alias l="exa --tree --level=1 --icons"
alias la="exa --header --long --all"

alias lh="cd ~"
