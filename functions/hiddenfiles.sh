# Hide and show hiddenfiles (Mac only)
# Function to show or hide files
# Takes either a YES or NO as argument
function show-files () {
    defaults write com.apple.finder AppleShowAllFiles $1
    killall Finder /System/Library/CoreServices/Finder.app
}

# Show / hide hidden files via alias
alias showfiles="show-hidden-files YES"
alias hidefiles="show-hidden-files NO"

# Lazy version of above
alias sf="showfiles"
alias hf="hidefiles"
