function core.print.alert() {
    local f=${FUNCNAME[1]}
    local ff=$(printf "%-32s\n" "$f")
    local sz="$(printf "%s: %s %s: %s" "Alt" "$SILENT" "$ff" "$msg")"
	if core._should_print_color 2; then
        util.println.magenta "$sz"
	else
        util.println.white "$sz"
	fi
}
