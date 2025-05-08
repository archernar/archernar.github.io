function core.print.error() {
         local lvl="$LL1A"
    local ff=$(printf "%-32s\n" "${FUNCNAME[1]}")
    local sz="$(printf "%s %s: %s %s" "Errr$lvl" "$SILENT" "$ff" "$msg")"
    if [ "$LOGLEVEL" -ge $lvl ]; then
        util.print.color cyan "$sz"
    fi
}
