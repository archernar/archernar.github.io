function core.print.alltest() {
      ansi.clear
      util.posprint.green 1   1 "X" 1
      util.posprint       1   2 "-" 39
      util.posprint.green 1  40 "X"
      util.posprint.green 10  1 "X" 1
      util.posprint       10  2 "-" 39
      util.posprint.green 10 40 "X"
      ansi.move "60" "1"
exit 0
      core.print.critical  "Log Level is $LOGLEVEL"
      core.print.debug     "debug"
      core.print.info      "info"
      core.print.advice    "advice"
      core.print.alert     "alert"
      core.print.error     "error"
      core.print.critical  "critical"
      corePrintAlways    "always"
      core.print.fatal     "fatal"
      stacktracetest

}
