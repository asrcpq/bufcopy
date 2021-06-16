_bufcopy_reset() {
	BUFFER="reset"
	zle accept-line
}
_bufcopy_proc() {
	echo -nE "$BUFFER" | xsel -i -b
}
_bufcopy_fq() {
	print -s "$BUFFER$POSTDISPLAY"
	eval "$BUFFER$POSTDISPLAY" &
	disown
	exit
}
bindkey '' _bufcopy_proc
zle -N _bufcopy_proc
bindkey '' _bufcopy_reset
zle -N _bufcopy_reset
bindkey '' _bufcopy_fq
zle -N _bufcopy_fq
