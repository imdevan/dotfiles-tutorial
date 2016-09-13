# Hide and show hiddenfiles (Mac only)

# Shared commands
showFinder="defaults write com.apple.finder AppleShowAllFiles"
restartFinder="killall Finder /System/Library/CoreServices/Finder.app"

# Show / hide hidden files
alias showfiles="${showFinder} YES && ${restartFinder}"
alias hidefiles="${showFinder} NO && ${restartFinder}"

# Lazy version of above
alias sf="showfiles"
alias hf="hidefiles"
