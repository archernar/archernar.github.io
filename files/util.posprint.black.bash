function util.posprint.black() {
    ansi.move "$row" "$col"; 
    u.put "$(szblack "$msg")"
}
