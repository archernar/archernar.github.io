function core.print.error_fn() {
	core.print.error "${FUNCNAME[1]}()${msg:+": "}$msg"
}
