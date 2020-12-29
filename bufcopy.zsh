bufcopy_proc() {
	echo -nE "$BUFFER" | xsel -i -b
}
bindkey '^B' bufcopy_proc
zle -N bufcopy_proc
