function core.print.alltest() {

      core.stacktracedepth 1
      core.loglevels
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
