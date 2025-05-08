function core.print.critical() {
         local lvl="$LL0A"
    local dex=0     
    if [[ -z "$ctrl" ]]; then
        dex=1
    else
        dex=ctrl
    fi
    local ff=$(printf "%-32s\n" "${FUNCNAME[dex]}")
    local sz="$(printf "%s %s: %s %s" "Crit$lvl" "$SILENT" "$ff" "$msg")"
    if [ "$LOGLEVEL" -ge $lvl ]; then
        util.print.color red "$sz"
    fi
}
