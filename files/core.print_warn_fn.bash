function core.print_warn_fn() {
	core.print_warn "${FUNCNAME[1]}()${msg:+": "}$msg"
}
