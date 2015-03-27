# == aliases
#generate a random pass
alias gpass="openssl rand -base64 12"
#git
alias g="git"
#starwars
alias starwars="telnet towel.blinkenlights.nl"
#reboot
alias restart="sudo shutdown -r now"
#reload zsh
alias reload!='. ~/.zshrc'
#ls -l
alias ls="ls -Gla"
#memcache-top
alias mctop="perl ~/dotfiles/memcache-top"
#tada
alias tada="afplay ~/dotfiles/tada.wav"
#windows sound
alias windows-sound="afplay ~/dotfiles/oxp.wav"


#git
alias gpush='git push origin $(current_branch)'
alias gpheroku='git push heroku $(current_branch)'
alias gcb='git push -u origin $(current_branch)'
alias gs='git status'
alias gadd='git add --all'
alias gc='git commit'
alias gca='git commit --amend --date="$(date)"'
alias wip='gaa && gca -m "WIP"'
