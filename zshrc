export ZSH=$HOME/dotfiles/oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git web-search sublime vagrant nyan command-not-found battery pow powder)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

export RBENV_ROOT=/usr/local/var/rbenv

source ~/dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/dotfiles/zsh-aliases.zsh

export EDITOR='subl -w'

export VISUAL='subl -w'

export GEM_EDITOR="subl"

eval "$(rbenv init -)"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
