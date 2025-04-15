function core.print.fatal() {
	if core._should_print_color 2; then
		printf "\033[1;35m%s:\033[0m %s\n" 'Fatal' "$msg" >&2
	else
		printf "%s: %s\n" 'Fatal' "$msg" >&2
	fi
}
