function core.print.advice() {
    local ff=$(printf "%-32s\n" "${FUNCNAME[1]}")
    local sz="$(printf "%s %s: %s %s" "Alrt" "$SILENT" "$ff" "$msg")"
    if [ "$LOGLEVEL" -gt $LL3A ]; then
        if core._should_print_color 1; then
            util.println.blue  "$sz"
        else
            util.println.white "$sz"
        fi
    fi
}
