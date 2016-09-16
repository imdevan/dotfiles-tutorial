# Example aliases
# Note format
# No spaces between name and string
# alias <name>=<string>

# Default editor
editor="atom"
work="~/Documents/projects/project-whitewater"
aliases_file=~/.dotfiles/aliases.sh

# Restarts shell
# Call after making changes w/o having to restart
alias refresh="source ~/.zshrc && clear"
alias r="refresh"

# Function to create new aliases
function new-alias() {
    echo "alias ${1}=\"${2}\"" >> $aliases_file
    refresh
}
alias na="new-alias"

# Bookmark position
function bookmark() {
    echo "${green}alias ${1}=\"$(pwd)\" ${purple} created!"
    echo "alias ${1}=\"$(pwd)\"" >> $aliases_file
    refresh
}
alias b="bookmark"


# Google docs
alias doc="python -mwebbrowser https://docs.google.com/create" # New google doc
alias docs="python -mwebbrowser http://docs.google.com"        # Main docs folder

# Git
alias conflicts="git diff --name-only --diff-filter=U"          # Does not push
alias no-edit="git commit --amend --no-edit"                    # Does not push
alias last="git log -1"                                         # Show last change
alias rebase="git fetch upstream && git rebase upstream/master" # Fetch and rebase
alias gcane!="git add -A && git commit --amend --no-edit && git push -f"

# System
alias off="sudo shutdown -h now"    # Shutdown
alias sleep="pmset sleepnow"        # Sleep

# Open dotfiles
alias dotfiles="${editor} ~/.dotfiles"
alias n="npm start"
alias p="cd ${work}"

# Created from bookmark or new-alias
alias i="/Users/devanhuapaya/Documents/projects/imdevan.github.io"
alias paddle="/Users/devanhuapaya/Documents/projects/project-whitewater/paddle"
alias a="atom ."
alias v="vim ."
alias grc="git rebase --continue"
alias kill="killall node"
alias nt="npm test"
alias gfu="git fetch upstream"
alias m="git checkout master"
alias stash="git stash"
