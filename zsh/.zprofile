start_wm() {
	echo -n 'Start river? [Y/n] '
	read -r confirm
	echo "$confirm" | grep -Eq '^\s*([Yy][Ee][Ss])?\s*$' &&
	exec river -no-xwayland
}

[ -z "$DISPLAY" ] && start_wm
