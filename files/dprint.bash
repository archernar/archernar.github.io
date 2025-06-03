function dprint() {
    local sz=""
    local w=$(TCOLSACTUAL)
    ((w=w-DBPRINTCOL-5))
    printf "\x1b[s"   # Saves the current cursor position.
    sz="$(echo "$msg" | gawk -v w="$w" '{print substr($0,1,w)}')"
    add_element "$sz"
    render_array
    printf "\x1b[u"   # Restores the cursor to the last saved position.
}
