# Restarts shell
# Call after making changes w/o having to restart
alias refresh="source ~/.zshrc && clear"
alias r="refresh"

# Google docs
alias doc="python -mwebbrowser https://docs.google.com/create" # new doc
alias docs="python -mwebbrowser http://docs.google.com"        # main docs folder

# Git
alias conflicts="git commit --amend --no-edit" # does not push
alias no-edit="git commit --amend --no-edit" # does not push
alias reset="git fetch upstream && git reset --hard upstream/master" # Reset and push

# System
alias ipaddress="ifconfig"
alias off="sudo shutdown -h now"
alias sleep="pmset sleepnow"
alias printdir="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
