$current_issue="./current_issue.md"

function get-current-issue () {
    echo $(cat $current_issue)
}
alias gci="get-current-issue"

function set-current-issue () {
    touch $current_issue
    echo $1 > $current_issue
}
alias sci="set-current-issue"
