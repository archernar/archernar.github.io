function core.print.critical() {
         LASTCONSOLEMESSAGE="$1"
         local lvl=$LL0
    local dex=0     
    if [[ -z "$ctrl" ]]; then
        dex=1
    else
        dex=ctrl
    fi
    local ff=$(printf "%-32s\n" "${FUNCNAME[dex]}")
    local sz="$(printf "%s %s: %s %s" "CRIT $lvl" "$SILENT" "$ff" "$msg")"
    if [ $LOGLEVEL -ge $lvl ]; then
        util.print.color red "$sz"
    fi
}
