# Flip a coin if unsure about lunch plans
function lunch?() {
    if (( $(( ( RANDOM % 10 )  + 1 )) > 5 )); then
         echo  "${bold}${green}Go to lunch! ✨${reset}"
    else
         echo  "${bold}${pink}Keep going! 💫${reset}";
    fi
}
alias l="lunch?"
