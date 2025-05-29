function core.print.advice() {
         LASTCONSOLEMESSAGE="$1"
         local lvl=$LL3
    local ff=$(printf "%-32s\n" "${FUNCNAME[1]}")
    if [ "$STACKTRACEDEPTH" -ge 2 ]; then
        ff=$(printf "%-32s\n" "${FUNCNAME[2]} >> ${FUNCNAME[1]}")
    fi
    local sz="$(printf "%s %s: %s %s" "ADVC $lvl" "$SILENT" "$ff" "$msg")"
    if [ $LOGLEVEL -gt $lvl ]; then
        util.print.color blue "$sz"
    fi
}
