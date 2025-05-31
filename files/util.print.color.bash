function util.print.color() {
         LASTCONSOLEMESSAGE="$2"
    if core._should_print_color 1; then
        case "$color" in
            black)   echo "$(szblack   "$sz")"  ;;
            red)     echo "$(szred     "$sz")"  ;;
            green)   echo "$(szgreen   "$sz")"  ;;
            yellow)  echo "$(szyellow  "$sz")"  ;;
            blue)    echo "$(szblue    "$sz")"  ;;
            magenta) echo "$(szmagenta "$sz")"  ;;
            cyan)    echo "$(szcyan    "$sz")"  ;;
            white)   echo "$(szwhite   "$sz")"  ;;
            default) echo "$(szwhite   "$sz")"  ;;
            *) echo "Invalid color: $color" >&2; return 1 ;;
        esac
    else
        echo "$(szwhite   "$sz")"
    fi
}
