function core.print.error() {
         LASTCONSOLEMESSAGE="$1"
         local lvl=$LL1
    local ff=$(printf "%-32s\n" "${FUNCNAME[1]}")
    local sz="$(printf "%s %s: %s %s" "ERRR $lvl" "$SILENT" "$ff" "$msg")"
    if [ $LOGLEVEL -ge $lvl ]; then
        util.print.color cyan "$sz"
    fi
}
