function printAtLevel() {
         LASTCONSOLEMESSAGE="$1"
    local ff=$(printf "%-12s\n" "${FUNCNAME[2]}")
    local sz="$(printf "%s %s: %s %s" "$label $lvl" "$SILENT" "$ff" "$msg")"
    if [ $LOGLEVEL -ge $lvl ]; then
       #util.print.color $color "$sz"
        #dprint "$sz"
        dprint "$(szcolor "$sz" $color)"
    fi
#         if core._should_print_color 1; then
#             echo "$(szmagenta "$sz")"
#         else
#             echo "$(szwhite "$sz")"
#         fi
}
