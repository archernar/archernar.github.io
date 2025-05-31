function core.print.info() {
         LASTCONSOLEMESSAGE="$1"
         local lvl=$LL4
    local ff=$(printf "%-32s\n" "${FUNCNAME[1]}")
    local sz="$(printf "%s %s: %s %s" "INFO $lvl" "$SILENT" "$ff"  "$msg")"
    if [ $LOGLEVEL -ge $lvl ]; then
        echo "$(szgreen "$sz")"
    fi
}
