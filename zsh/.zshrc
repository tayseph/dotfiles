POWERLEVEL9K_MODE='nerdfont-fontconfig'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv pyenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history)
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="$ "
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=''
POWERLEVEL9K_SHORTEN_STRATEGY='truncate_from_right'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

export DISABLE_AUTO_TITLE=true

source ~/.zgen/zgen.zsh

if ! zgen saved; then
    zgen oh-my-zsh
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/z
    zgen oh-my-zsh plugins/pyenv
    zgen oh-my-zsh plugins/golang
    zgen oh-my-zsh plugins/systemd
    zgen oh-my-zsh plugins/tmuxinator
    zgen load willghatch/zsh-cdr
    zgen load zsh-users/zaw
    zgen load carlf/zsh-plugins rbenv
    zgen load carlf/zsh-plugins emacs
    zgen load lukechilds/zsh-nvm
    zgen load bhilburn/powerlevel9k powerlevel9k next
    zgen save
fi

bindkey '^R' zaw-history
bindkey '^T' zaw-cdr
bindkey '^H' zaw-ssh-hosts

export PATH=~/bin:~/go/bin:$PATH

alias mux=tmuxinator

eval `keychain --eval --agents ssh,gpg id_rsa id_rsa_old carlf@photocarl.org`
