# Path to your oh-my-zsh configuration.
ZSH=$HOME/Tools/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="refined"

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
plugins=(
  history
  git
  command-not-found
  history-substring-search
  docker
  autojump
  zsh-nvm
)

# maybe ~/bin is not already in the PATH
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/sbin:$PATH

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Complete ./ and ../
zstyle ':completion:*' special-dirs true

# Sort completions by modification time
zstyle ':completion:*' file-sort access

autoload bashcompinit
bashcompinit

[[ -e $ZSH/stuff/gita-completion.bash ]] && source $ZSH/stuff/gita-completion.bash

# micro
export EDITOR=/usr/bin/nano
which micro > /dev/null 2>&1 && export EDITOR=$(which micro)
export VISUAL=$EDITOR

# Go
export GOROOT=$HOME/Tools/go
export GOPATH=$HOME/Projects/go
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH

# direnv
type direnv > /dev/null 2>&1 && eval "$(direnv hook zsh)"

# pipenv
type pipenv > /dev/null 2>&1 && eval "$(pipenv --completion)"

# pip
export PYTHONWARNINGS=$PYTHONWARNINGS,"ignore:DEPRECATION::pip._internal.cli.base_command"
type pip > /dev/null 2>&1 && eval "$(pip completion --zsh)"
type pip3 > /dev/null 2>&1 && eval "$(pip3 completion --zsh)"

# rbenv
type rbenv > /dev/null 2>&1 && eval "$(rbenv init -)"

# jenv
export PATH=$HOME/.jenv/bin:$PATH
type jenv > /dev/null 2>&1 && eval "$(jenv init -)"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# powerline
[[ -e /usr/share/powerline/zsh/powerline.zsh ]] && source /usr/share/powerline/zsh/powerline.zsh
[[ -e /usr/local/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh ]] && source /usr/local/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

[[ -e ~/.oh-my-zsh/.iterm2_shell_integration.zsh ]] && source ~/.oh-my-zsh/.iterm2_shell_integration.zsh

# Python virtualenv prompt
#show_virtual_env() {
#  if [ -n "$VIRTUAL_ENV" ]; then
#    echo "($(basename $VIRTUAL_ENV))"
#  fi
#}
#PS1='$(show_virtual_env)'$PS1

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

alias isodate='date -Iseconds'
alias rename='prename'
alias nano=$EDITOR

type thefuck > /dev/null 2>&1 && eval $(thefuck --alias)
