function corePrintAlways() {
         LASTCONSOLEMESSAGE="$1"
    local ff=$(printf "%-12s\n" "${FUNCNAME[1]}")
    local sz="$(printf "%s %s: %s %s" "      " "$SILENT" "$ff" "$msg")"
    echo "$(szwhite "$sz")"
}
