function printAtLevel() {
         LASTCONSOLEMESSAGE="$1"
    local ff=$(printf "%-12s\n" "${FUNCNAME[2]}")
    local sz="$(printf "%s %s: %s %s" "$label $lvl/$LOGLEVEL" "$SILENT" "$ff" "$msg")"
    if [ $lvl -ge $LOGLEVEL ]; then

        if [[ "$flag" == "flag" ]]; then
          sz="== $sz"
          dprint $(repeat_char "=" ${#sz})
        fi 

        dprint "$(szcolor "$sz" $color)"

        if [[ "$flag" == "flag" ]]; then
          dprint $(repeat_char "=" ${#sz})
        fi 
    fi
#         if core._should_print_color 1; then
#             echo "$(szmagenta "$sz")"
#         else
#             echo "$(szwhite "$sz")"
#         fi
}
