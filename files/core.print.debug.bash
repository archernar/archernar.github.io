function core.print.debug() {
         LASTCONSOLEMESSAGE="$1"
         local lvl=$LL5
    local ff=$(printf "%-32s\n" "${FUNCNAME[1]}")
    local sz="$(printf "%s %s: %s %s" "DBUG $lvl" "$SILENT" "$ff" "$msg")"
    if [ $LOGLEVEL -ge $lvl ]; then
        echo "$(szyellow "$sz")"
    fi
}
