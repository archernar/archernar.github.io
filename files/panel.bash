function panel() {
         local SIDE="|"
         local TOP="-"
         local BOTTOM="-"
         local R=$1;C=$2;L=$3;W=$4      # Bash-Function-Args
         local REND=$((R+L))
         local CEND=$((C+W))
    if [ $REND -ge $(TROWS) ]; then
        return
    fi
    if [ $CEND -ge $(TCOLS) ]; then
        return
    fi
        

    util.pprint $R $C "$CORNER" 1;
    util.pprint $R $((C+1)) "$TOP" $((W-1));
    util.pprint $R $((C+W)) "$CORNER" 1

    local ct=1;
    local ROW=$((R+i))
    while [ $ct -lt $L ]; do
      ROW=$((R+ct))
      util.pprint $ROW $C "$SIDE" 1;
      util.pprint $ROW $((C+1)) " " $((W-1));
      util.pprint $ROW $((C+W)) "$SIDE" 1
      ((ct=ct+1))
      #echo $ct
    done


    util.pprint $((R+L)) $C "$CORNER" 1;util.pprint $((R+L)) $((C+1)) "$BOTTOM" $((W-1));util.pprint $((R+L)) $((C+W)) "$CORNER" 1

}
