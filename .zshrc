HISTCONTROL=erasedups:ignorespace

export PATH=$PATH:$HOME/.local/bin/
## Virtualenvwrapper
export WORKON_HOME=$HOME/.venvs
export PROJECT_HOME=$HOME/gits
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

source ~/.antigen/antigen.zsh

# export MANPATH="/usr/local/man:$MANPATH"

# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
alias dc="docker-compose"
alias fd="fdfind"


antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).

antigen bundle fd 
antigen bundle colored-man-pages 
antigen bundle git 
antigen bundle docker 
antigen bundle docker-compose 
antigen bundle vscode 
antigen bundle pip 
antigen bundle cp 
antigen bundle python 
antigen bundle lxd 
antigen bundle rsync
antigen bundle zsh-256color 
antigen bundle heroku
antigen bundle lein
antigen bundle command-not-found

## ANTIGEN 
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

antigen theme gentoo

# if feeling like theming: 
# antigen theme romkatv/powerlevel10k


antigen apply

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh