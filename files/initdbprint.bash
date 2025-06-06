function initdbprint() {
          local r=0; local c=0; local l=0; local w=0;
          ((r=row-1))
          ((c=col-2))
          w=24
          l=24
          local REND=$(TROWS)
          local CEND=$(TCOLS)
          ((CEND=CEND-1))
          ((CEND=CEND-c))
          ((REND=REND-row))
          ((REND=REND-2))
#     INIT_DBPRINTCOL=$row
#     INIT_DBPRINTROW=$col
#     DBPRINTCOL=$INIT_DBPRINTCOL
#     DBPRINTROW=$INIT_DBPRINTROW
    panel $r $c $REND $CEND
}
