# Opening localhost ports
alias l3="open http://localhost:3000"
alias l4="open http://localhost:4000"
alias l8="open https://localhost:8000"
alias l80="open http://localhost:8080"

# Opens localhost at port
# takes number as port
function localhost() {
	open https://localhost:${1}
}
alias l="localhost"
