function core.print.fatal() {
    local dex=0     
    if [[ -z "$ctrl" ]]; then
        dex=1
    else
        dex=ctrl
    fi


    local ff=$(printf "%-32s\n" "${FUNCNAME[dex]}")
    local sz="$(printf "%s %s: %s %s" "Fatl" "$SILENT" "$ff" "$msg")"
    if [ "$LOGLEVEL" -ge $LL0A ]; then
        if core._should_print_color 1; then
            util.println.red "$sz"
        else
            util.println.white "$sz"
        fi

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
