bufcopy_reset() {
	BUFFER="reset"
	zle accept-line
}
bufcopy_proc() {
	echo -nE "$BUFFER" | xsel -i -b
}
bindkey '' bufcopy_proc
zle -N bufcopy_proc
bindkey '' bufcopy_reset
zle -N bufcopy_reset
