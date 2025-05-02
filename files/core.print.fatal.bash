function core.print.fatal() {
    local dex=0     
    if [[ -z "$ctrl" ]]; then
        dex=1
    else
        dex=ctrl
    fi
    local sz="<<"
    local delim=""
	#for ((i=0; i<${#FUNCNAME[@]}-1; ++i)); do
	for ((i=${#FUNCNAME[@]}; i>=0; i--)); do
		sz="$delim$sz,${FUNCNAME[$i]}"
        delim=", "
    done
	sz=${#FUNCNAME[@]}-1
    local length=${#FUNCNAME[@]}
    last_index=$((length - 1))
    local ff="$sz"

    #local ff=$(printf "%-32s\n" "${FUNCNAME[dex]}")
    local sz="$(printf "%s %s: %s %s" "Fatl" "$SILENT" "$ff" "$msg")"
    if [ "$LOGLEVEL" -ge $LL0A ]; then
        if core._should_print_color 1; then
            util.println.red "$sz"
        else
            util.println.white "$sz"
        fi
    fi
}
