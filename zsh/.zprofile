start_wm() {
	echo -n 'Start bspwm? [Y/n] '
		read -r confirm
		confirm="$(echo "$confirm" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"
	case "$confirm" in
		Yes|Y|y|'') exec startx ;;
		*) false
	esac
}

[ -z "$DISPLAY" ] && start_wm
