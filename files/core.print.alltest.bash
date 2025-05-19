function core.print.alltest() {

       ansi.clear
       ansi.home
       N=1;util.pprint $N 1 "|" 1;util.pprint $N 2 "-" $(TCOLS -2);util.pprint $N $(TCOLS) "|" 1

       R=2;C1=1;C2=$(TCOLS);util.pprint $R $C1 "|" 1;  util.pprint $R $C2 "|" 1
       R=3;C1=1;C2=$(TCOLS);util.pprint $R $C1 "|" 1;  util.pprint $R $C2 "|" 1
       R=4;C1=1;C2=$(TCOLS);util.pprint $R $C1 "|" 1;  util.pprint $R $C2 "|" 1
       R=5;C1=1;C2=$(TCOLS);util.pprint $R $C1 "|" 1;  util.pprint $R 2 "-" $(( C2 + -2));util.pprint $R $C2 "|" 1

       util.pprint $(TROWS) 1 "|" 1
       util.pprint $(TROWS) 3 "-" $(TCOLS -4) 
       util.pprint $(TROWS) $(TCOLS) "|" 1
       ansi.home
exit 0
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
