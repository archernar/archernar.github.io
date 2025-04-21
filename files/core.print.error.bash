function core.print.error() {
    local f=${FUNCNAME[1]}
    local ff=$(printf "%-32s\n" "$f")
	if core._should_print_color 2; then
        printf "\033[1;31m%s: %s:\033[0m %s\n" 'Error' "$ff" "$msg" >&2
		#printf "\033[1;31m%s:\033[0m %s\n" 'Error' "$msg" >&2
	else
        printf "%s: %s: %s\n" 'Error' "$ff" "$msg" >&2
		#printf "%s: %s\n" 'Error' "$msg" >&2
	fi
}
