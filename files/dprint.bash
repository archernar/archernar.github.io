function dprint() {
    local w=$(TCOLS)
    ((w=w-DBPRINTCOL-5))
    printf "\x1b[s"   # Saves the current cursor position.

    add_element "$(echo "$msg" | gawk -v w="$w" '{print substr($0,1,w)}')"
    render_array

    printf "\x1b[u"   # Restores the cursor to the last saved position.
}
