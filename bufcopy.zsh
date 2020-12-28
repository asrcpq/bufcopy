bufcopy_proc() {
	echo $BUFFER | xsel -i -b
}
bindkey '^B' bufcopy_proc
zle -N bufcopy_proc
