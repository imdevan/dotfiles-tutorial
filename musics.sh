#  Searches ultimate-guitar.com and inifitelooper for song
# learn artist name and song without quotes
function learn() {
	search=""
    for element in $@; do
        search="${search}${element}+"
    done
    search="${search:0:${#search}-1}"
    open "https://www.ultimate-guitar.com/search.php?search_type=title&order=&value=${search}"
    open "http://www.infinitelooper.com/s?q=${search}"
}
