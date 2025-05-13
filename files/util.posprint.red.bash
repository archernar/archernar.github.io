function util.posprint.red() {
    ansi.move "$row" "$col"; 
    u.put "31" "$msg"
}
