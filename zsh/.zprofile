start_wm() {
	echo -n 'Start window manager? [Y/n] '
	read -r confirm
	echo "$confirm" | grep -Eq '^\s*([Yy][Ee][Ss])?\s*$' &&
	exec wm
}

[ -z "$DISPLAY" ] && start_wm
