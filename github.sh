# Pulls down pull request from upstream and creates branch
function pull-request() {
    git fetch upstream pull/${1}/head:pr-${1} &&
    git checkout pr-${1} &&
    git remote prune upstream;
}
alias pr="pull-request"

# Calls git add, git commit, and git push
# Takes commit message
function git-add-push() {
    git add -A &&
    git commit -m "${@}" &&
    git push
}
alias gap="git-add-push"

# Adds, attaches commit message, and pushes with --set-upstream
# Same as above but but pushes to new remote repo based on branch name
function git-push-upstream() {
    UPSTREAM="$(git rev-parse --abbrev-ref HEAD)"
    echo "${green}Created branch: ${UPSTREAM}${reset}"
    git add -A &&
    git commit -m $@ &&
    git push --set-upstream origin ${UPSTREAM}
}
alias gps="git-push-upstream"


# Opens current git repo in browser
function here() {
    # Optionally go to non-origin remote
    if [ -z "$1" ]; then
        REPO="$(git remote get-url origin)"
    else
        REPO="$(git remote get-url ${1})"
    fi

    # Set ssh remotes to http
    URL="${REPO}"
    if [[ $URL == *git@* ]]; then
        URL="${URL/://}"
        URL="${URL/git@/https://}"

    fi
    URL="${URL%.git}"
    echo "${green}${URL}${reset}"
    # Check branch and open

    # Optionally go to non-origin remote
    if [ -z "$2" ]; then
        BRANCH="$(git rev-parse --abbrev-ref HEAD)"
    else
        BRANCH="${2}"
    fi

    if [ $BRANCH != "master" ]; then
        python -mwebbrowser $URL/tree/$BRANCH
    else
        python -mwebbrowser $URL
    fi
}
alias h="here"
alias hum="here upstream master" # I usually go to upstream master most

# Opens pull requests in browser
# Takes optionall pr number
function open-pull-requests() {
    # Optionally go to non-origin remote
    REPO="$(git remote get-url upstream)"

    # Set ssh remotes to http
    URL="${REPO}"
    if [[ $URL == *git@* ]]; then
        URL="${URL/://}"
        URL="${URL/git@/https://}"
    fi
    URL="${URL%.git}"
    echo "${green}${URL}${reset}"

    if [ -z "$1" ]
        then
            open ${URL}/pulls
    else
        open ${URL}/pull/${1}
    fi
}
alias opr="open-pull-requests"

# Opens commit in browser
function open-commit() {
    branch="$(git rev-parse --abbrev-ref HEAD)"
    commit="$(cat .git/refs/remotes/origin/${branch})"
    open https://github.ibm.com/devan-huapaya/paddle/commit/${commit}
}
alias oc="open-commit"
