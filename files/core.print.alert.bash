function core.print.alert() {
    local f=${FUNCNAME[1]}
    local ff=$(printf "%-32s\n" "$f")
	if core._should_print_color 2; then
        local sz=$(printf "%s: %s: %s" "Alt" "$ff" "$msg")
        util.print.magenta $(printf "%s: %s: [%s]" "Alt" "$ff" "$msg")
        #printf "\033[1;31m%s: %s: %s\033[0m\n" 'Alt' "$ff" "$msg" >&2
	else
        printf "%s: %s: %s\n" 'Alt' "$ff" "$msg" >&2
	fi
}
