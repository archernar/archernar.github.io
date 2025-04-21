function core.print.alert() {
    local f=${FUNCNAME[1]}
    local ff=$(printf "%-32s\n" "$f")
	if core._should_print_color 2; then
        util.print.magenta "$(printf "%s: %s: %s" "Alt" "$ff" "$msg")" >&2
	else
        printf "%s: %s: %s\n" 'Alt' "$ff" "$msg" >&2
	fi
}
