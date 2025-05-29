function dprint() {
    printf "\x1b[s"   # Saves the current cursor position.

    add_element "$msg"
    render_array
    printf "\x1b[u"   # Restores the cursor to the last saved position.
}
