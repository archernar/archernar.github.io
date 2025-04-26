function core.print.alert() {
    local sz="$(printf '%s: %s %s: %s' 'Alrt' '$SILENT' $(printf '%-32s\n' '${FUNCNAME[1]}' '$msg')"
	if core._should_print_color 2; then
        util.println.magenta "$sz"
	else
        util.println.white "$sz"
	fi
}
