function core.print.info() {
    local dex=1
    local f=${FUNCNAME[$dex]}
	if core._should_print_color 1; then
		printf "\033[1;32m%s: %s:\033[0m %s\n" 'Info' "$f" "$msg"
	else
		printf "%s: %s: %s\n" 'Info' "$f" "$msg"
	fi
}
