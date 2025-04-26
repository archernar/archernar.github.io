function core.print.info() {
    local f=${FUNCNAME[1]}
    local ff=$(printf "%-32s\n" "$f")
    local sz="$(printf "%s: %s: %s" "Info" "$ff" "$msg")"
    if [ "$DEBUG" -gt 0 ]; then
        if core._should_print_color 1; then
            util.println.green "$sz"
        else
            util.println.white "$sz)"
        fi
    fi
}
