start_wm() {
	echo -n 'Start bspwm? [Y/n] '
	read -r confirm
	echo "$confirm" | grep -Eq '^\s*(Yes|Y|y)?\s*$' &&
	exec startx
}

[ -z "$DISPLAY" ] && start_wm
