function core.print.warn_fn() {
	core.print.warn "${FUNCNAME[1]}()${msg:+": "}$msg"
}
