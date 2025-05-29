function core.print.stackline() {
         LASTCONSOLEMESSAGE="$1"
    local ff=$(printf "%-32s\n" "${FUNCNAME[1]}")
    local sz="$(printf "%s %s: %s %s" "Stck" "$SILENT" "" "$msg")"
    if [ "$LOGLEVEL" -gt $LL3A ]; then
        util.print.color blue "$sz"
    fi
}
