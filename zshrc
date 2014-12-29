export ZSH=$HOME/dotfiles/oh-my-zsh

ZSH_THEME="eastwood"

plugins=(git web-search sublime vagrant nyan command-not-found battery pow powder osx rails)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin"

export RBENV_ROOT=/usr/local/var/rbenv

source ~/dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/dotfiles/zsh-aliases.zsh

source ~/dotfiles/functions.zsh

export EDITOR='subl -w'

export VISUAL='subl -w'

export GEM_EDITOR="subl"

eval "$(rbenv init -)"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
