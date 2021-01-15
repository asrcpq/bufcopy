bufcopy_reset() {
	BUFFER="reset"
	zle accept-line
}
bufcopy_proc() {
	echo -nE "$BUFFER" | xsel -i -b
}
bufcopy_fq() {
	zle history-search-backward
	eval "$BUFFER" &
	disown
	exit
}
bufcopy_test() {
	notify-send "$POSTDISPLAY"
}
bindkey '' bufcopy_proc
zle -N bufcopy_proc
bindkey '' bufcopy_reset
zle -N bufcopy_reset
bindkey '' bufcopy_fq
zle -N bufcopy_fq
bindkey '' bufcopy_test
zle -N bufcopy_test
