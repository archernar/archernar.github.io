function util.posprint.red() {
    ansi.move "$row" "$col"; 
    u.putc "31" "$msg"
}
