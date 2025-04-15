function core.print.debug() {
	if [[ -v DEBUG ]]; then
		printf "%s: %s\n" 'Debug' "$msg"
	fi
}
