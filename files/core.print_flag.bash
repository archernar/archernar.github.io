function core.print_flag() {
	if core._should_print_color 1; then
		printf "\033[1;32m%s:\033[0m %s\n" 'Info' "$msg"
		printf "\033[1;32m%s:\033[0m %s\n" 'Info' "$msg"
		printf "\033[1;32m%s:\033[0m %s\n" 'Info' "$msg"
	else
		printf "%s: %s\n" 'Info' "$msg"
		printf "%s: %s\n" 'Info' "$msg"
		printf "%s: %s\n" 'Info' "$msg"
	fi
}
