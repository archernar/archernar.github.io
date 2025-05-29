function dbprint() {
    ((DBPRINTROW=DBPRINTROW+1))
    ansi.move "$DBPRINTROW" "$DBPRINTCOL"; 
    ansi.clearEOL
    ansi.move "$DBPRINTROW" "$DBPRINTCOL"; 
    printf "||  %s" "$msg"
}
