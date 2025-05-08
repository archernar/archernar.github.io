function core.print.info() {
         local lvl="$LL4A"
    local ff=$(printf "%-32s\n" "${FUNCNAME[1]}")
    local sz="$(printf "%s %s: %s %s" "Info$lvl" "$SILENT" "$ff"  "$msg")"
    if [ "$LOGLEVEL" -ge $lvl ]; then
        util.print.color black "$sz"
    fi
}
