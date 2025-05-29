function core.print.alert() {
         LASTCONSOLEMESSAGE="$1"
         local lvl=$LL2
    local ff=$(printf "%-32s\n" "${FUNCNAME[1]}")
    local sz="$(printf "%s %s: %s %s" "ALRT $lvl" "$SILENT" "$ff" "$msg")"
    if [ $LOGLEVEL -gt $lvl ]; then
        if core._should_print_color 1; then
            util.println.magenta "$sz"
        else
            util.println.white "$sz"
        fi
    fi
}
