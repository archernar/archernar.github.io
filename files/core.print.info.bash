function core.print.info() {
    local f=${FUNCNAME[1]}
    local ff = paddy $f
	if core._should_print_color 1; then
		printf "\033[1;32m%s: %s:\033[0m %s\n" 'Info' "$ff" "$msg"
	else
		printf "%s: %s: %s\n" 'Info' "$ff" "$msg"
	fi
}
