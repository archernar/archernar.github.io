function core.print.alltest() {
         local void=0    # Bash-Function-Args

       local ct=1;
       local sz="";
       local m=0;
       local n=0;

       ansi.clear
       console.rulers

       ct=1;
       while [ $ct -lt 60000 ]; do
           rints  2 $(TROWS); 
           rrints 4 $(TCOLS)
           rrrints  2 24
           rrrrints 2 24
#            if [ "$RRR1" -lt 15 ]; then
#                ansi.textcolor red
#                util.set_background blue
#            else
#                ansi.textcolor white
#                util.set_background black
#            fi
           panel $R1 $RR1 $RRR1 $RRRR1
           ((ct=ct+1))
       done
       ansi.gutteractual
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
