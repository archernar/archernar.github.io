function panel() {
         local SIDE="|"
         local TOP="-"
         local BOTTOM="-"
         local R=$1;C=$2;L=$3;W=$4;M=$5      # Bash-Function-Args
         local RPLUS=$((R+1))
         local CPLUS=$((C+1))
         local REND=$((R+L+1))
         local CEND=$((C+W+1))
         local TR=$(TROWS)
         local TRE=$((TR-1))
         local E=0
    if [ $REND -ge $TRE ]; then
        echo "PANEL FAIL:  $R $C $L $W" >> /tmp/err
        return
    fi
    if [ $CEND -gt $(TCOLS) ]; then
        echo "PANEL FAIL:  $R $C $L $W" >> /tmp/err
        return
    fi
    if [ $R -lt 4 ]; then
        R=4
    fi
    if [ $C -lt 4 ]; then
        C=4
    fi
    if [ $W -lt 4 ]; then
        W=4
    fi
    if [ $L -lt 4 ]; then
        L=4
    fi
        
stack_push $R
stack_push $C
stack_push $L
stack_push $W

    ((WH = W/2))
    ((HH = L/2))

    util.pprint $R $C     "$CORNER" 1;
    util.pprint $R $CPLUS "$TOP" $((W));
    util.pprint $R $CEND  "$CORNER" 1

    local ct=1;
    local ROW=$((R+i))
    ((E=L+1))
    while [ $ct -lt $E ]; do
      ROW=$((R+ct))
      util.pprint $ROW $C     "$SIDE" 1;
      util.pprint $ROW $CPLUS " " $((W));
      util.pprint $ROW $CEND  "$SIDE" 1
      ((ct=ct+1))
      #echo $ct
    done

    util.pprint $REND $C "$CORNER" 1;util.pprint $REND $CPLUS "$BOTTOM" $((W));util.pprint $REND $CEND "$CORNER" 1
    util.pprint $RPLUS $CPLUS "$L/$W" 1




#     util.pprint $((R+HH)) $((C+WH)) "$W" 1
#     echo "PANEL OK  :  $R $C $L $W" >> /tmp/err
    ansi.gutteractual

}
