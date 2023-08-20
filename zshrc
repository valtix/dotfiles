# stop these errors https://github.com/asdf-vm/asdf/issues/266
# & make it fast https://carlosbecker.com/posts/speeding-up-zsh/
autoload -Uz compinit 
if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump) ]; then
    compinit;
else
    compinit -C;
fi;

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# tree-sitter-cli
export PATH=/home/valti/.cargo/bin:$PATH

# Add default node to path
export PATH=~/.nvm/versions/node/v18.16.0/bin:$PATH

# Load NVM
export NVM_DIR=~/.nvm
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh" --no-use


# Dotbot
export PATH=/Users/ivaltier/Library/Python/3.9/bin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


source "$HOME/.zsh/spaceship/spaceship.zsh"

################################################################################################################
###########################################    PLUGIN MANAGER: ANTIDOTE     ####################################
################################################################################################################
# source antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

# to install a plugin simply use antidote install name_of_plugin

################################################################################################################
#####################################################    ALIASES     ###########################################
################################################################################################################
alias vim="nvim"
alias lt="exa --tree --level=2 -a --icons"
alias l="exa --tree --level=1 --icons"
alias la="exa --header --long --all"

alias lh="cd ~"

