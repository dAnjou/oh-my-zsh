# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="steeef"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(environment terminal editor completion history directory spectrum alias utility prompt git command-not-found history-substring-search)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Complete ./ and ../
zstyle ':completion:*' special-dirs true

# Sort completions by modification time
zstyle ':completion:*' file-sort access

# maybe ~/bin is not already in the PATH
export PATH=$HOME/bin:$HOME/.local/bin:$PATH

export EDITOR=/usr/bin/nano
export VISUAL=/usr/bin/nano

# Go
export GOPATH=$HOME/Projekte/go
export PATH=$GOPATH/bin:$PATH

# Pivotal
alias piv='pivotal_tools'

setopt interactivecomments

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# ls
alias ll='ls -l'
alias la='ls -A'
alias lah='ls -lah'
alias l='ls -CF'
alias rs='reset'

# utils
alias heiseping='ping heise.de'
alias bc='bc -lq .bcrc'
alias gg='git grep'
alias s='subl3'

if [[ $(uname) == 'Linux' ]]; then
    alias ls='ls --color=auto'
    if [[ $(hostname) == 'orion.uberspace.de' ]]; then
        export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
        source "$HOME/bin/virtualenvwrapper.sh"
    else
        export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7
        source "$HOME/.local/bin/virtualenvwrapper.sh"
        export PATH=$HOME/.gem/ruby/2.0.0/bin:$PATH
    fi
elif [[ $(uname) == 'Darwin' ]]; then
    alias ls='ls -G'
    # for homebrew
    export PATH=/usr/local/bin:$PATH
fi
