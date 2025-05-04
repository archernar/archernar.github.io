function core.print.advice() {
         local lvl="$LL3A"
    local ff=$(printf "%-32s\n" "${FUNCNAME[1]}")
    local sz="$(printf "%s %s: %s %s" "Advc$lvl" "$SILENT" "$ff" "$msg")"
    if [ "$LOGLEVEL" -gt $lvl ]; then
        if core._should_print_color 1; then
            util.println.blue  "$sz"
        else
            util.println.white "$sz"
        fi
    fi
}
