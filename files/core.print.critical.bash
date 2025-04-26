function core.print.critical() {
    local ff=$(printf "%-32s\n" "${FUNCNAME[1]}")
    local sz="$(printf "%s %s: %s %s" "Crit" "$SILENT" "$ff" "$msg")"
    if [ "$DEBUG" -gt 0 ]; then
        if core._should_print_color 1; then
            util.println.red "$sz"
        else
            util.println.white "$sz"
        fi
    fi
}
