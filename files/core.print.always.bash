function core.print.always() {
    local ff=$(printf "%-32s\n" "${FUNCNAME[1]}")
    local sz="$(printf "%s %s: %s %s" "Crit" "$SILENT" "$ff" "$msg")"
    util.println.white "$sz"
}
