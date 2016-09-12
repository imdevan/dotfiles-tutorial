# Function to generate new alias
function newAlias() {
    echo "alias ${1}=\"${2}\"" >> ~/.dotfiles/aliases.sh
    source ~/.zshrc
}
alias na="newAlias"

# Common directory variables
project_directory="~/Documents/projects"
dotfile_dir="~/dotfiles-boilerplate"
xcode="~/Documents/xCode"

# Gotos
alias projects="cd ${project_directory}"
alias p="projects"
alias d="cd ~/Downloads"

# Alias for dotfiles
alias z="atom ${dotfile_dir}"
alias vz="vim ${dotfile_dir}"
alias va="vim ${dotfile_dir}/aliases.sh"
alias aliases="atom ${dotfile_dir}/aliases.sh"

# Restarts shell
# Call after making changes w/o having to restart
alias refresh="source ~/.zshrc"
alias r="source ~/.zshrc"

# Issues and problems
# Used for notes on code reviews
alias cr="vim ~/.code-reviews"
alias cra="atom ~/.code-reviews"

# Google docs
alias doc="python -mwebbrowser https://docs.google.com/create" # new doc
alias docs="python -mwebbrowser http://docs.google.com"        # main docs folder

# Open directory in editor of choice
alias a="atom ./"
alias c="code ./"
alias s="sublime ./"
alias v="vim ./"

# Email
alias e="python -mwebbrowser http://inbox.google.com"
alias verse= "python -mwebbrowser https://mail.notes.na.collabserv.com/verse"

# Common Gulp commands
alias esl="gulp eslint"
alias grep="gulp mocha --grep"
alias sl="gulp scsslint"
alias t="gulp test"

# Web aliases
alias fb="python -mwebbrowser https://www.facebook.com"
alias smile="python -mwebbrowser http://smile.amazon.com"
alias goto="python -mwebbrowser" # Goto general website

# Open stuff
# Lazy versions of built in open
alias h="open ./" # Opens in finder
alias o="open"    # Opens generic file/url

# Lazy git commands
# The basics
alias gcl="git clone"
alias ga="git add -A"
alias gac="git add -A && git commit -m" # Add and commit
alias gc="git commit -m"
alias gca="git commit --amend"
alias gpu="git push --set-upstream origin"
alias gpf="git push -f"
# Branch mgmt
alias gb="git branch"
alias gco="git checkout"
alias gcu="git checkout upstream/master"
alias gcb="git checkout -b"
alias gd="git branch -D"
alias delete="gd"
alias gfo="git fetch origin"
alias gfu="git fetch upstream"
# See merge conflicts
alias conflicts="gconf"
# Status
alias status="git status"
# Last change made
alias previous="git log -1"
# Remote mgmt
alias grem="git remote"
alias gremv="git remote -v"
# Stash
alias gs="git stash"
alias gsl="git stash list"
alias gsp="git stash pop"
# Rebase (upstream/master)
alias rebase="git fetch upstream && git rebase upstream/master"
alias gr="git rebase" # from origin/master
alias gra="git rebase --abort"
alias grc="git rebase --continue"
# Merge (upstream/master)
alias merge="git fetch upstream && git merge upstream/master"
# Go to master branch
alias m="git checkout master"
# Danger zone 💀
alias gcane="git commit --amend --no-edit" # does not push
alias gcane!="git add -A && git commit --amend --no-edit && git push -f" # pushes to current branch
alias reset="git fetch upstream && git reset --hard upstream/master" # Reset and push
alias reset!="git fetch upstream && git reset --hard upstream/master && git push origin master --force" # Reset and push

# Lazy npm commands
alias n="npm start"
alias nt="npm test"
alias nr="npm run"
alias npr="env NODE_ENV=production npm start" # Run in production
alias ni="npm install"
alias nu="npm uninstall"
alias nis="npm i --save"
alias nisd="npm i --save-dev"
alias np="npm update"
alias sni="sudo npm install"
alias snig="sudo npm install -g"
alias clean="rm -rf node_modules/ && npm cache clear && npm install"

# System
alias ip="ifconfig"
alias rf="rm -rf"
alias cf="cp -rf"
alias off="sudo shutdown -h now"
alias slp="pmset sleepnow"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
