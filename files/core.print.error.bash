function core.print.error() {
    local ff=$(printf "%-32s\n" "${FUNCNAME[1]}")
    local sz="$(printf "%s %s: %s %s" "Errr" "$SILENT" "$ff" "$msg")"
    if [ "$LOGLEVEL" -ge $LL1A ]; then
        if core._should_print_color 1; then
            util.println.red "$sz"
        else
            util.println.white "$sz"
        fi
    fi
}
