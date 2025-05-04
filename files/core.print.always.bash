function core.print.always() {
    local ff=$(printf "%-32s\n" "${FUNCNAME[1]}")
    local sz="$(printf "%s %s: %s %s" "AlwsX" "$SILENT" "$ff" "$msg")"
    util.println.white "$sz"
}
