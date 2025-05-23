function core.print.flag() {
    local msg="************************"
    local f=${FUNCNAME[1]}
    if [ "$DEBUG" -gt 0 ]; then
        if core._should_print_color 1; then
            printf "\033[1;32m%s: %s:\033[0m %s\n" "$f" 'Info' "$msg"
            printf "\033[1;32m%s: %s:\033[0m %s\n" "$f" 'Info' "$msg"
            printf "\033[1;32m%s: %s:\033[0m %s\n" "$f" 'Info' "$msg"
        else
            printf "%s: %s: %s\n" 'Info' "$f" "$msg"
            printf "%s: %s: %s\n" 'Info' "$f" "$msg"
            printf "%s: %s: %s\n" 'Info' "$f" "$msg"
        fi
    fi
}
