function core.print.debug_fn() {
	core.print.debug "${FUNCNAME[1]}()${msg:+": "}$msg"
}
