function core.print.resetloglevel() {
         LOGLEVEL=$DEFLOGLEVEL
         core.print.critical "$LOGLEVEL"
}
