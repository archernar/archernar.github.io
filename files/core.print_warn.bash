	if core._should_print_color 2; then
		printf "\033[1;33m%s:\033[0m %s\n" 'Warn' "$msg" >&2
	else
		printf "%s: %s\n" 'Warn' "$msg" >&2
	fi
}
