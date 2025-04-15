function core.print.info_fn() {
	core.print.info "${FUNCNAME[1]}()${msg:+": "}$msg"
}
