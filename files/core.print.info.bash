function core.print.info() {
    local f=${FUNCNAME[1]}
    local ff=$(printf "%-32s\n" "$f")
    if [ "$DEBUG" -gt 0 ]; then
        if core._should_print_color 1; then
            util.println.green "$(printf "%s: %s: %s" "Info" "$ff" "$msg")"
        else
            util.println.white "$(printf "%s: %s: %s" "Info" "$ff" "$msg")"
        fi
    fi
}
