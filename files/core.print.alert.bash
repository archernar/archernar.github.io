function core.print.alert() {
    local f=${FUNCNAME[1]}
    local ff=$(printf "%-32s\n" "$f")
	if core._should_print_color 2; then
        util.println.magent "$(printf "%s: %s: %s" "Alrt" "$ff" "$msg")" >&2
	else
        util.println.white "$(printf "%s: %s: %s" "Alrt" "$ff" "$msg")" >&2
	fi
}
