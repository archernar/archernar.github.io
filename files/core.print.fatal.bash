function core.print.fatal() {
         local lvl="$LL0A"
    local dex=0     
    if [[ -z "$ctrl" ]]; then
        dex=1
    else
        dex=ctrl
    fi


    local ff=$(printf "%-32s\n" "${FUNCNAME[dex]}")
    local sz="$(printf "%s %s: %s %s" "Fatl$lvl" "$SILENT" "$ff" "$msg")"
    if [ "$LOGLEVEL" -ge $lvl ]; then
        util.print.color red "$sz"

        local sz=""
        local delim=""
        local length=${#FUNCNAME[@]}
        length=$((length - 1))
        for ((i=$length; i>0; i--)); do
            core.print.stackline "----  ${FUNCNAME[$i]}"
            delim=", "
        done
    fi
}
