function core.print.info() {
	if core._should_print_color 1; then
		printf "\033[1;32m%s: %s:\033[0m %s\n" 'Info' "$FUNCNAME[1]" "$msg"
	else
		printf "%s: %s: %s\n" 'Info' "$FUNCNAME[1]" "$msg"
	fi
}
