function core.print.fatal_fn() {
	core.print.fatal "${FUNCNAME[1]}()${msg:+": "}$msg"
}
