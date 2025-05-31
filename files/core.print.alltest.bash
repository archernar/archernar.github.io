function core.print.alltest() {
       local void=0    # Bash-Function-Args

       local ct=1;
       local sz="";
       local r=0;
       local m=0;
       local n=0;
       local o=0;
       local p=0;
       local i=0;
       local w=0; local x=0; local y=0; local z=0;
       local q1=0; local q2=0; local q3=0; local q4=0;
               ansi.clear
initialize_empty_array


D=`date`
      SZ="$(/usr/bin/bash --version | head -1)"
      BAR=$(repeat_char "_" ${#SZ})
      dprint "$SZ"
      dprint "MOE"

      ansi.move "1" "1"
      corePrintAlways      $BAR
      dprint               "$LASTCONSOLEMESSAGE"
      corePrintAlways      "update $D"
      dprint               "$LASTCONSOLEMESSAGE"
      corePrintAlways      "$SZ"
      dprint               "$LASTCONSOLEMESSAGE"
      corePrintAlways      "Log Level is $LOGLEVEL"
      dprint               "$LASTCONSOLEMESSAGE"
      corePrintAlways      $BAR
      dprint               "$LASTCONSOLEMESSAGE"
      core.print.debug     "debug"
      dprint               "$LASTCONSOLEMESSAGE"
      core.print.info      "info"
      dprint               "$LASTCONSOLEMESSAGE"
      core.print.advice    "advice"
      dprint               "$LASTCONSOLEMESSAGE"
      core.print.alert     "alert"
      dprint               "$LASTCONSOLEMESSAGE"
      core.print.error     "error"
      dprint               "$LASTCONSOLEMESSAGE"
      core.print.critical  "critical"
      dprint               "$LASTCONSOLEMESSAGE"
      corePrintAlways      $BAR
         ct=0;
      dprint               "$LASTCONSOLEMESSAGE"

         #set_cursor_color_black
         while [ $ct -lt 5 ]; do
             min=100; local max=500;
             range=$((max - min + 1))
             R=$((RANDOM % range + min))
             dprint "$R"
             ((ct=ct+1))
         done
         #set_cursor_color_white

ansi.gutter2
dbprint "Current Array: [${my_array[*]}]"
dbprint "---"

kv_init
kv_set "name" "michael"
stack_init
echo "OK"
       console.rulers
           #panel 5 5 $(TROWS -4) $(TCOLS -25)
           panel 5 5 14 25
       c=1;
       n=5
       m=5
       while [ $ct -lt 420 ]; do
           panel $m $n 5 10 
           ((ct=ct+1))
           ((n=n+2))
           ((m=m+2))
       done
       ansi.gutteractual
           panel $(TROWS) 10 10 10
           panel $(TROWS -1) 10 10 10
           panel $(TROWS -2) 10 10 10
           panel $(TROWS -3) 10 10 10
           panel $(TROWS -4) 10 3 3
           panel $(TROWS -5) 10 3 3
           panel $(TROWS -6) 10 3 3
           panel $(TROWS -7) 10 3 3

       ct=1;
       n=5
       m=5
       while [ $ct -lt 420 ]; do
           panel $m $n 5 10 
           kv_set "panel$ct" "$m $n 5 10"
           ((ct=ct+1))
           ((n=n+2))
           ((m=m+2))
       done
       ansi.gutteractual




       ct=1;
       n=25
       m=5
       while [ $ct -lt 420 ]; do
           panel $m $n 5 10 
           ((ct=ct+1))
           ((n=n+2))
           ((m=m+2))
       done
       ansi.gutteractual
       ct=1;
       n=45
       m=5
       while [ $ct -lt 88420 ]; do
           rints  2 $(TROWS); 
           rrints 4 $(TCOLS)
           rrrints  2 24
           rrrrints 2 24
           panel $R1 $RR1 $RRR1 $RRR1
           panel $m $n 5 10 
           ((ct=ct+1))
           ((n=n+2))
           ((m=m+2))
       done
       ansi.gutteractual
       exit 0
       panel 10 10 4 4



       ct=1;
       while [ $ct -lt 60000 ]; do
           r=$(sign_from_sine 15)
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
           ((r=r*8))
           ((RRRR1=RRRR1 + r))
           ((RRR1=RRR1 + r))
           panel $R1 $RR1 $RRR1 $RRRR1
           ((ct=ct+1))
           ((m=ct%40))
           if [ "$m" -eq 0 ]; then
               sleep 5
               ansi.clear
               console.rulers
               ansi.gutteractual
           fi

       done
       ansi.gutteractual
exit 0
      core.stacktracedepth 1
      #core.loglevels
      corePrintAlways      "Log Level is $LOGLEVEL"
      core.print.debug     "debug"
      core.print.info      "info"
      core.print.advice    "advice"
      core.print.alert     "alert"
      core.print.error     "error"
      core.print.critical  "critical"
      corePrintAlways      "always"
      core.print.fatal     "fatal"
      stacktracetest

}
