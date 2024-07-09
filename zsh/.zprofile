start_wm() {
	echo -n 'Start bspwm? [Y/n] '
	read -r confirm
	echo "$confirm" | grep -Eq '^\s*([Yy][Ee][Ss])?\s*$' &&
	exec startx
}

[ -z "$DISPLAY" ] && start_wm
