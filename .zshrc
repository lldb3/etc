HISTCONTROL=erasedups:ignorespace

export PATH=$PATH:$HOME/.local/bin/:$HOME/.cargo/bin

## Virtualenvwrapper
export WORKON_HOME=$HOME/.venvs
# source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
# setup afterwards if needed

# export MANPATH="/usr/local/man:$MANPATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

############################################# ANTIGEN #############################################
source ~/.antigen/antigen.zsh
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle fd
antigen bundle colored-man-pages
antigen bundle git
antigen bundle docker
antigen bundle docker-compose
antigen bundle pip
antigen bundle cp
antigen bundle python
antigen bundle rsync
antigen bundle zsh-256color
antigen bundle heroku
antigen bundle lein
antigen bundle command-not-found
antigen bundle zsh-users/zsh-completions

## Themes
antigen theme gentoo
# antigen theme romkatv/powerlevel10k
antigen apply

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

############################################# Aliases #############################################

alias dc="docker compose" # or 'docker-compose'
alias fd="fdfind"

##### Optional aliases
# alias ls="exa"
# alias l="exa -l"
# alias la="exa -la"
# alias cat="batcat -p"