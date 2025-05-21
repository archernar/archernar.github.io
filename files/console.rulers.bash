function console.rulers() {
       local ct=1;
       local sz="";
       ct=1;
       sz="";
       while [ $ct -lt $(TCOLS) ]; do
           sz="1234567890$sz"
           ((ct=ct+10))
       done
       util.pprint 1 1 "$sz" 1
       ansi.gutter
       ct=2;
       while [ $ct -lt $(TROWS) ]; do
           util.pprint $ct 1 "$ct" 1
           ((ct=ct+1))
       done
       ansi.gutter
}
