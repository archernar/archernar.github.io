function console.rulers() {
       local ct=1;
       local sz="";
       local ct=1;
       local n=1;
       sz="";
       sz2="";
       while [ $ct -lt $(TCOLS) ]; do
           sz2="$sz2         $n"
           sz="1234567890$sz"
           ((ct=ct+10))
           ((n=n+1))
           if [ $n -gt "9" ]; then
               n=0
           fi
       done
       util.pprint 2 1 "$sz" 1
       util.pprint 1 1 "$sz2" 1
       ansi.gutter
       ct=3;
       while [ $ct -lt $(TROWS) ]; do
           util.pprint $ct 1 "$ct" 1
           ((ct=ct+1))
       done
       ansi.gutter
}
